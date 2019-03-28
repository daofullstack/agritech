
require('babel-register')
//var session = require('express-session');
//const {success, error} = require('functions')
//var path = require('path');
const bodyParser = require('body-parser')
const express = require('express')
const mysql = require('mysql')
const morgan = require('morgan')('dev')
const Twig = require('twig'), // Twig module
twig = Twig.twig;       // Render function

// mes var globales
const app = express()
// app.use(session({
// 	secret: 'dao',
// 	resave: true,
// 	saveUninitialized: true
// }));
const port = 8080
var recettes = '';
//var message='';
//var messageinscript='';

// middle
app.use(morgan)
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('views'))

// mon moteur 
app.set('view engine' , 'ejs')

// connection info 
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'alimentation'
});
//debut connection
connection.connect(function(err){
if(!err) {
    console.log("connecté à la base ... ");  
// routes
         //pour index
         app.get('/', (req,res)=> {
            res.render(__dirname+'/index.ejs')
         })
         //pour page recette
         app.get('/recette', (req,res)=> {
            
        
            connection.query('SELECT * from recettes ORDER BY id DESC LIMIT 10', function(err, rows, fields) {
            
                if (!err){
                
                    recettes = rows;
                    res.render(__dirname+'/views/content/recette.ejs',{recettes: recettes});

                }
                    
                else{
                    recettes="impossible de recuperé les recette";
                    res.render(__dirname+'/views/content/recette.ejs',{recettes: recettes});
                   
                }
                
            })
         })

        // pour les resto
        app.get('/top10', (req,res)=> {

            var restaurants = '';
            connection.query('SELECT * from restaurants ORDER BY id_resto limit 10 ', function(err, rows, fields) {
                
                if (!err){
                
                    restaurants = rows;
                    res.render(__dirname+'/views/content/resto.ejs',{restaurants :restaurants})

                }
                    
                else{
                    connection.end();
                    res.render(__dirname+'/views/content/resto.ejs',{restaurants :'mauvaise requette.'})

                }
            
            });
        })

    



        // pour engins 
        app.get('/enginDispo', (req,res)=> {

            var engins = '';
            connection.query('SELECT * from engins ORDER BY id_engin DESC', function(err, rows, fields) {
            
                if (!err){
                
                    engins = rows;
                    res.render(__dirname+'/views/content/enginDispo.ejs',{engins: engins});
        
                }
                    
                else{
                    connection.end();
                    res.render(__dirname+'/views/content/enginDispo.ejs',{engins: engins});
                    res.json('mauvais requette.');
                }
                    
                });
        })
    } else {
        console.log("Error connecting database ... nn");    
    }
});
//fin de ma connect 

//ecoute de port
app.listen( port, () => console.log('Started on port '+ port))