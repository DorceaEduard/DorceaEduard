const express = require('express');
const fs = require('fs');
const path = require('path');
const { transcribePDF } = require('./pdf-transcribe');
const { connectToSecondBrain } = require('./secondbrain-connector');

const app = express();
const PORT = process.env.PORT || 5000;

// Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Serve static files if needed
app.use(express.static('public'));

// Endpoint to transcribe PDF
app.post('/api/transcribe', async (req, res) => {
  try {
    const { filePath } = req.body;
    
    if (!filePath) {
      return res.status(400).json({ error: 'File path is required' });
    }
    
    // Check if file exists
    if (!fs.existsSync(filePath)) {
      return res.status(404).json({ error: 'File not found' });
    }
    
    // Read and parse PDF using the SecondBrain PDF parsing tool
    const text = await transcribePDF(filePath);
    
    // Here you would integrate with the SecondBrain system for learning
    // For now, we'll just return the transcribed text
    res.json({ 
      success: true, 
      content: text.substring(0, 500) + '...' // Return first 500 chars
    });
    
  } catch (error) {
    console.error('Error processing PDF:', error);
    res.status(500).json({ error: 'Failed to transcribe PDF' });
  }
});

// Endpoint for learning assistance
app.post('/api/learn', async (req, res) => {
  try {
    const { content, question, context } = req.body;
    
    if (!content || !question) {
      return res.status(400).json({ error: 'Content and question are required' });
    }
    
    // Here you would integrate with the SecondBrain system
    // For now, we'll simulate a response by processing the content
    const response = await connectToSecondBrain(content, question);
    
    res.json({ 
      success: true, 
      response 
    });
    
  } catch (error) {
    console.error('Error with learning request:', error);
    res.status(500).json({ error: 'Failed to process learning request' });
  }
});

// Start server
app.listen(PORT, () => {
  console.log(`Backend server running on port ${PORT}`);
});