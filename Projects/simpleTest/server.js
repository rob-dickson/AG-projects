const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.listen(3000, () => {
    console.log('Application started and Listening on port 3000');
  });

app
  .use(bodyParser.json())
  .use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader(
      'Access-Control-Allow-Headers',
      'Origin, X-Requested-With, Content-Type, Accept, Z-Key'
    );
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    next();
  });


app.use(express.static(__dirname));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/page/index.html");
});