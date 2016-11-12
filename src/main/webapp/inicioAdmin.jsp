<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/icono.ico">
    <title>WALLAPOP: Inicio administrador</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/inicioAdmin.css" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </head>

  <body>
    <div class="container" id="container">
      <div class="header clearfix">
		<img src="images/logo.png" alt="Error en la imagen">
        <h2 class="text-muted">WALLAPOP</h2>
		<p>Encuentra tu producto ideal</p>
      </div>
	 
	<!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Gestiona los usuarios. <span class="text-muted">Bajas y modificaciones.</span></h2>
          <p class="lead">Accede al registro de los usuarios de la aplicaci�n. En �l se recojen los datos de todos los usuarios y podr�s modificar los datos que ellos deseen, as� como darlos de baja.</p>
			<button onclick="window.location='adminusuario';" id="botones1" class="btn btn-info">Registro de usuarios</button>
		</div>
        <div class="col-md-5">
          <img id="imagenes1" class="featurette-image img-responsive center-block" src="images/usuario.png" alt="Usuarios">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Gestiona los productos. <span class="text-muted">Modificaciones y bajas del cat�logo.</span></h2>
          <p class="lead">Accede al registro de los productos de la aplicaci�n. En �l se recojen los datos de todos los productos del cat�logo y podr�s modificar los datos que los usuarios deseen, as� como darlos de baja.</p>
			<button onclick="window.location='adminproducto';" id="botones2" class="btn btn-info">Cat�logo de productos</button>
		</div>
        <div class="col-md-5 col-md-pull-7">
          <img id="imagenes2" class="featurette-image img-responsive center-block" src="images/productos.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Comunicate con otros usuarios. <span class="text-muted">Chatea.</span></h2>
          <p class="lead">En esta secci�n podr�s iniciar un chat con cualquier usuario de la aplicaci�n.</p>
			<button onclick="window.location='mensajes';" id="botones3" class="btn btn-info">Chat</button>
	   </div>
        <div class="col-md-5">
          <img id="imagenes3" class="featurette-image img-responsive center-block" src="images/chat.png" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->
	  
	  
	  
	<div class="footer">
		<p>&copy; 2016 Wallapop, Inc.</p>
    </div>

    </div>  
  </body>
</html>
