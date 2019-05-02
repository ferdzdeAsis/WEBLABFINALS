var express = require('express');
var mysql = require('mysql');
var app = express();
var appAdmin = express();
//listen
app.listen(3000 , listening("Client"));
appAdmin.listen(3001 , listening("Admin"));

//client Render
app.use(express.static('htmlUser'));
//client Get data

app.use(express.urlencoded({extended:true}));
app.post('/submit_form', (req, res) => {
	name = req.body.NName;
	res.end();
});
//Admin render
appAdmin.use(express.static('htmlAdmin'));
//Function check if ok
function listening(type) {
	console.log("Listening: "+ type);
}
//connect to database
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "samp"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});