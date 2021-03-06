<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/icono.ico">
    <title>WALLAPOP: Inicio Usuarios</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/inicioCliente.css" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
  </head>

  <body>
    <div class="container">
      <div class="header clearfix">
		<img src="images/logo.png" alt="Error en la imagen">
        <h2 class="text-muted">WALLAPOP</h2>
		<p>Encuentra tu producto ideal</p>
      </div>
	
	<nav>  
			<ul id="menu">
				<li><a href="inicioCliente.jsp">Inicio</a></li>
			 	<li><a href="miUsuario">Mi perfil</a></li>
			 	<li><a href="productos">Mis productos</a></li>
			 	<li><a href="catalogo">Cat�logo</a></li>
			 	<li><a href="mensajes">Chat</a></li>
	 		</ul>
		</nav>


		<div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="images/catalogo.png" alt="Generic placeholder image" width="140" height="140">
          <h3>Cat�logo de productos</h3>
          <p>En Wallapop puedes buscar dentro de una amplia cantidad de categor�as. Tenemos todo tipo de productos a vuestra disposici�n. �Encuentra el producto que estabas buscando!</p>
          <p><a class="btn btn-primary" href="catalogo" role="button">Cat�logo de productos &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="images/perfil.png" alt="Generic placeholder image" width="140" height="140">
          <h3>Visita tu perfil</h3><br>
          <p>Accede a tu perfil. Podr�s modificar tu informaci�n de usuario o de tus productos, as� como dar de alta un producto que quieras vender.</p>
          <p><a class="btn btn-primary" href="miUsuario" role="button">Mi perfil &raquo;</a></p>
          <p><a class="btn btn-primary" href="productos" role="button">Mis productos &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="images/chatUsu.png" alt="Generic placeholder image" width="140" height="140">
          <h3>Comunicate con otros usuarios</h3>
          <p>Relacionate con otros usuarios a trav�s del chat.</p>
          <p><a class="btn btn-primary" href="mensajes" role="button">Chat &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
	
	<form id="form_buscador" action="catalogo" method="post">
		<table id="buscador">
			<tr><td id="celda1"><b>B�squeda r�pida de productos</b></td></tr> 
			<tr id="fila2">
			<td id="celda2">
			<span>Buscar producto:<input type="text" name="texto" class="buscarProd"></span>
			
			<span><input type="submit" value="Buscar" id="buscar" class="buscar btn btn-primary"></span><br><br>
			</td> 
			</tr>
			<tr ><td id="avanzada"><a class="avanzada" href="catalogo?avanzada=true">+ B�squeda avanzada</a></td></tr>
		</table><br><br>
	</form>
	
	<table class="productos">
		<tr>
		<th></th>
		<th class="tituloTabla">Productos que puedes encontrar</th>
		<th></th>
		</tr>
		<tr>
			<td><img src="images/cajones.jpg" class="imagenesProductos" alt="Cajones blancos"></td>
			<td><img src="images/bici.jpg" class="imagenesProductos" alt="Bicicleta"></td>
			<td><img src="images/sofa.jpg" class="imagenesProductos" alt="Sofa de esquina"></td>
		</tr>
		<tr>
			<td><img src="images/iphone.JPG" class="imagenesProductos" alt="Iphone"></td>
			<td><img src="images/bolso.jpg" class="imagenesProductos" alt="Bolso"></td>
			<td><img src="images/cachimba.jpg" class="imagenesProductos" alt="Cachimba"></td>
		</tr>
	</table>
	

    
       <div class="footer">
        <p>&copy; 2016 Wallapop, Inc.</p>
      </div>

    </div>


   
   
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
   
    
    
  </body>
</html>
