# Neo-Web

Documentación Api-Rest utilizando Postman: 
Link: https://documenter.getpostman.com/view/11926596/TVYAi1uH 

_Instalaciones Necesarias_ 

1) Node js:  
 Link: https://nodejs.org/es/download/ 
 Es recomendable que se te descargues la version _LTS_ ya que es la más estable. 

2) Controlador de versiones _Git:_ 
 Link: https://git-scm.com/downloads 
 Recomendable para realizar un correcto seguimiento de tu proyecto. 

3) Crear un usuario y repositorio en GitHub: 
 Link: https://github.com/ 

3)Postman: 
 Link: https://www.postman.com/downloads/ 
 Recomendable para realizar peticiones HTTP como GET, DELETE, PUT Y POST hacia la Api.

4) MySQL: 
 Link: https://www.mysql.com/downloads/ 
 La Api está creada utilizando MySQL para el manejo de la base de datos. 
 Hay otras opciones para usar, como MySQL Workbench Link: https://dev.mysql.com/downloads/workbench/ o 
 instalar y utilizar MySQL desde la consola pero desde el Sistema Operativo Linux

   A) - _Herrameinta que permite la descarga de contenidos desde servidores web:_ 
      wget http://sitioweb.com/programa.tar.gz 

   B) - _Descargar el paquete con el MySql:_ 
      wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.10-1_all.deb 

   C) - _Instalar el paquete:_ 
      sudo dpkg -i mysql-apt-config_0.8.10-1_all.deb 

   D)- _Actualizar los repositorios:_ 
      sudo apt update 

   E) - _Instalar el servidor de comunidad MySQL, el cliente y demás archivos necesarios:_ 
      sudo apt-get install mysql-server 

   F) - _Asegurar la instalación del servidor MySQL:_ 
      sudo mysql_secure_installation 

   G) - _Verificar si el servidor MySQL está activo y funcionando:_ 
      sudo systemctl status mysql 

   H) - _Iniciarlo (si no esuviera funcionando):_ 
      sudo systemctl enable mysql 

   I) - _Acceder al shell de MySQL:_ 
      sudo mysql -u root -p 

   J) - _Escribir help para ver como moverse por la base de datos:_ 
      help 

5) Visual Studio Code: 
  Link: https://code.visualstudio.com/download 
  Programa fundamental para crear o mejorar la Api (tambien se puede utilizar Atom Sublime Text, etc). 


_Instalación de Paquetes y Modulos:_

1) Inicializar la aplicación Node.js con un archivo package.json:
    "npm init"
 Con el comando npm init se crea un archivo llamado package.json. En este archivo, queda reflejada la configuración del proyecto de NodeJs

2) Instalar los módulos necesarios: 
    "npm install express mysql body-parser --save"  

3) Instalar Nodemon: 
    "npm install nodemon -g" 

 Esta dependencia observará los archivos en el directorio en el que se inició nodemon, y su cualquier archivo cambia, nodemos reiniciará automaticamente su aplicacion de node.js. 

4) Instalar PM2:
    "npm install pm2 -g" 
 Para mas usos de Pm2 ingresa al siguiente Link: https://www.juanonlab.com/blog/es/uso-de-pm2


