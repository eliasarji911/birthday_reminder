const express = require('express');
require('dotenv').config();
const app = express();
const port = process.env.PORT
const api = process.env.HOST

app.listen(port,()=>(console.log(`http://${api}:${port}`)));

app.get('/',(req,res)=>{res.sendFile(__dirname+'/public/index.html')});