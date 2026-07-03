# Backend for SecondBrain

This is the backend service for the SecondBrain knowledge system, providing:

- PDF transcription capabilities
- Learning assistance agent
- Integration with the SecondBrain knowledge system

## Features

1. **PDF Transcription**: Convert PDF files to text using PDF parsing
2. **Learning Agent**: Process content and answer questions based on learning material
3. **SecondBrain Integration**: Connect to the main SecondBrain system for knowledge processing

## Installation

1. Install Node.js (v16+ recommended)
2. Install dependencies: `npm install`
3. Run the server: `npm start` or `npm run dev`

## API Endpoints

### POST /api/transcribe
- Transcribes a PDF file and returns the text content
- Request body: `{ "filePath": "/path/to/file.pdf" }`
- Returns: `{ "success": true, "content": "transcribed text..." }`

### POST /api/learn
- Process learning content and answer questions
- Request body: `{ "content": "text content", "question": "your question", "context": "optional context" }`
- Returns: `{ "success": true, "response": "learning response" }`

## Integration with SecondBrain

This backend connects to the SecondBrain system at C:\ProiectEdi to process content and learn from it. The connection uses Python scripts that interface with the SecondBrain Python modules.

## Development

For development, use `npm run dev` to run with nodemon for automatic restarts.