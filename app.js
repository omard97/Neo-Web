const express = require('express');
const mysql = require('mysql');

const bodyParser = require('body-parser');

const PORT = 3000;

const app = express();

app.use(bodyParser.json()); //falta instalar la dependencia


//Conexión a Mysql
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'userTP',
  password : 'Felipe098.,',
  database : 'BDNeoWeb',
  
});

//Verificar la conexion a la BD
connection.connect(error => {
    if(error) throw error; //mensaje de error sobre que no encuentra la BD

    //BD encontrada y conectada
      console.log("La conexion a la base de datos fue exitosa");   
});

app.listen(PORT, ()=> console.log(`El servidor esta funcionando en el puerto ${PORT}`));


//********* rutas *******
//Mensaje de bienvenida
app.get('/', (req,res)=>{
  res.send('bienvenido a la api de Neo-Web');
});

//Obtener todos Clientes
app.get('/cliente', (req,res)=>{
  const sql = 'SELECT * FROM cliente;'
  connection.query(sql,(error, results)=>{
    if(error) throw error;
    if(results.length>0){
      res.json(results); 
    }else{
      res.send('no hay resultados');
    }
  });
});

//Obtener todos Clientes
app.get('/cliente', (req,res)=>{
  res.send('List of cliente');
});

//Obtener todos los productos
app.get('/Producto', (req,res)=>{
  const sql = 'SELECT * FROM Producto;'
  connection.query(sql,(error, results)=>{
    if(error) throw error;
    if(results.length>0){
      res.json(results); 
    }else{
      res.send('no hay resultados');
    }
  });
});

//crear nuevo cliente
app.post('/add', (req,res)=>{
  res.send('nuevo cliente');
});

//crear nuevo producto
app.post('/add', (req,res)=>{
  res.send('nuevo producto');
});

//actualizar cliente
app.put('/update/cliente/:id',(req,res)=> {
  res.send('update cliente');
});

//actualizar producto
app.put('/update/producto/:id',(req,res)=> {
  res.send('update producto');
});

//eliminar cliente
app.delete('/delete/cliente/:id', (req,res)=>{
  res.send('delete cliente');
});

//eliminar cliente
app.delete('/delete/producto/:id', (req,res)=>{
  res.send('delete producto');
});
