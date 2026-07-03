const { exec } = require('child_process');
const fs = require('fs');
const path = require('path');

/**
 * Transcribe a PDF file using the SecondBrain PDF parsing tool
 * @param {string} filePath - The path to the PDF file
 * @returns {Promise<string>} The transcribed text content
 */
async function transcribePDF(filePath) {
  return new Promise((resolve, reject) => {
    // Check if file exists
    if (!fs.existsSync(filePath)) {
      reject(new Error('File not found'));
      return;
    }
    
    // Build the command to execute the Node.js PDF parsing script
    const command = `cd /d "C:\\ProiectEdi" && node "node_modules\\pdf-parse\\bin\\cli.mjs" "${filePath}"`;
    
    exec(command, { encoding: 'utf8' }, (error, stdout, stderr) => {
      if (error) {
        console.error('Error transcribing PDF:', error);
        reject(error);
        return;
      }
      
      if (stderr) {
        console.error('PDF parsing error:', stderr);
        reject(new Error(stderr));
        return;
      }
      
      // Extract the text content from stdout
      // The CLI outputs the text with a header, so we need to extract just the text
      const lines = stdout.split('\n');
      let text = '';
      
      // Find the actual content (usually after a header line)
      for (let i = 0; i < lines.length; i++) {
        if (lines[i].trim() && !lines[i].startsWith('PDF parsed from')) {
          text += lines[i] + '\n';
        }
      }
      
      resolve(text.trim());
    });
  });
}

// Export the function for use in the API routes
module.exports = { transcribePDF };