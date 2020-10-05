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
  const sql = 'SELECT * FROM cliente;';
  connection.query(sql,(error, results)=>{
    if(error) throw error;

    if(results.length>0){
      res.json(results); 
    }else{
      res.send('no hay resultados');
    }
  });
});

//Obtener solo 1 Cliente
app.get('/cliente/:id', (req,res)=>{
  const {id}=req.params
  const sql = `select * from cliente where idcliente = ${id}`;
  connection.query(sql,(error, result)=>{
    if(error) throw error;

    if(result.length>0){
      res.json(result); 
    }else{
      res.send('no hay resultados');
    }
  });
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

//obtener 1 solo producto
app.get('/producto/:id', (req,res)=>{
  const {id}=req.params
  const sql = `select * from Producto where idproducto = ${id}`;
  connection.query(sql,(error, result)=>{
    if(error) throw error;

    if(result.length>0){
      res.json(result); 
    }else{
      res.send('no hay resultados');
    }
  });
});

//crear nuevo cliente
app.post('/crearCliente', (req,res)=>{
  const sql = 'insert into cliente set ?';

  const clienteobjt = {
    Nombre :req.body.Nombre,
    Apellido : req.body.Apellido,
    Correo : req.body.Correo
  }
  connection.query(sql,clienteobjt, error => {
    if(error) throw error;
    res.send('Cliente creado');
  });
});

//crear nuevo producto
app.post('/crearProducto', (req,res)=>{
  const sql = 'insert into Producto set ?';

  const Productobjet = {
    NombreP :req.body.NombreP,
    Precio : req.body.Precio
    
  }
  connection.query(sql,Productobjet), error => {
    if(error) throw error;
    res.send('Producto creado');
  }
});

//actualizar cliente
app.put('/update/cliente/:id',(req, res)=> {
  const {id} = req.params;
  const {Nombre,Apellido,Correo} = req.body;
  const sql = `update cliente set Nombre = '${Nombre}',
  Apellido = '${Apellido}', Correo = '${Correo}'
  where idcliente = ${id}`;

  connection.query(sql, error =>{
    if(error) throw error;

    res.send('Cliente actualizado');
  });

});

//actualizar producto
app.put('/update/producto/:id',(req,res)=> {
  const {id} = req.params;
  const {NombreP,Precio,} = req.body;
  const sql = `update Producto set NombreP = '${NombreP}', Precio = '${Precio}' where idproducto = ${id}`;

  connection.query(sql, error =>{
    if(error) throw error;

    res.send('Producto actualizado');
  });

});

//eliminar cliente
app.delete('/delete/cliente/:id', (req,res)=>{
  const {id} = req.params;
  const sql = `delete from cliente where idcliente = ${id}`;

  connection.query(sql, error =>{
    if(error) throw error;

    res.send('Cliente eliminado');
  });

});

//eliminar cliente
app.delete('/delete/producto/:id', (req,res)=>{
  const {id} = req.params;
  const sql = `delete from Producto where idproducto = ${id}`;

  connection.query(sql, error =>{
    if(error) throw error;

    res.send('Producto eliminado');
  });
});
