import express from "express";
import bodyParser from "body-parser";
import viewEngine from "./config/viewEngine";
import db from "./config/db_connection";
import initWebRoutes from './route/web';
  var flash = require('express-flash');
  var session = require('express-session')
require('dotenv').config();

let app = express();

//config app
app.use(flash())
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: false
}))
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }))

viewEngine(app);
initWebRoutes(app);

let port = process.env.PORT || 1011;
//Port === undefined => port = 6969

app.listen(port, () => {
    //callback
    console.log("Backend Nodejs is runing on the port : " + port)
  
})
