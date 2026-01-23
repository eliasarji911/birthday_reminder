const express = require('express');
const app = express();
const port = 3500;
const path = require('path');

app.use(express.static(__dirname));
app.use(express.json());

// serve the frontend index
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// projects routes
app.use('/main', require('./routes/main_R'));

// start server
app.listen(port, (req,res) => {
  console.log(`Project Management System running at http://localhost: ${port}`);
});
