const { exec } = require('child_process');

/**
 * Connect to SecondBrain system to process learning content
 * @param {string} content - The content to learn from
 * @param {string} question - The question to answer
 * @returns {Promise<string>} Processed result
 */
async function connectToSecondBrain(content, question) {
  return new Promise((resolve, reject) => {
    const command = `cd /d "C:\\ProiectEdi" && echo "${content}" | node "node_modules\\secondbrain\\index.js" "${question}"`;
    
    exec(command, (error, stdout, stderr) => {
      if (error) {
        reject(error);
        return;
      }
      
      try {
        const result = stdout.trim();
        resolve(result);
      } catch (parseError) {
        reject(parseError);
      }
    });
  });
}

module.exports = { connectToSecondBrain };