<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%boolean registroCorrecto = false;
    if(request.getAttribute("registroCorrecto") != null &&
    		   ((String) request.getAttribute("registroCorrecto")) == "true")
    {
    	registroCorrecto = true;
    }
    
    boolean usuarioExistente = false;
    if(request.getAttribute("usuarioExistente") != null &&
    		   ((String) request.getAttribute("usuarioExistente")) == "true")
    {
    	usuarioExistente = true;
    }
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/icono.ico">
    <title>WALLAPOP: Registro</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
	<link href="css/registro.css" rel="stylesheet">
	<script type="text/javascript">

	function validacion(){
	var email = document.getElementById("email").value;
	var contras1 = document.getElementById("contra1").value;
	var contras2 = document.getElementById("contra2").value;
	var nombre = document.getElementById("nomusu").value;
	var apellido = document.getElementById("apellidos").value;
	var ciudad = document.getElementById("prov");
	var optionSelIndex = ciudad.options[ciudad.selectedIndex].value;
	var expresion = /^[a-z][\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;
	
	if (email.length == 0){
		alert("Por favor introduce tu direcci�n de correo electr�nico");
		return false;
	}
	if (!expresion.test(email)){
		alert("Por favor introduce una direcci�n de correo electr�nico v�lida");
		return false;
	}
	
	if (contras1.length == 0){
		alert("Por favor introduce tu contrase�a");
		return false;
	}
	if (contras2.length == 0){
		alert("Por favor confirma tu contrase�a");
		return false;
	}
	if(contras1 != contras2){
		alert("Las contrase�as no son iguales. Por favor, introduzca la misma contrase�a en ambos campos");
		return false;
	}
	if (nombre.length == 0){
		alert("Por favor introduce tu nombre");
		return false;
	}
	if (apellido.length == 0){
		alert("Por favor introduce tus apellidos");
		return false;
	}
	if (optionSelIndex == 0) {
        alert("Por favor introduce tu ciudad de residencia");
		return false;
    }
	//alert("Registro completado con �xito")
	return true;
	
	
}
	</script>
	
  </head>

  <body>

    <div class="container">
      <div class="header clearfix">
		<img src="images/logo.png" alt="Error en la imagen">
        <h2 class="text-muted">WALLAPOP</h2>
		<p>Encuentra tu producto ideal</p>
      </div>

		<div class="jumbotron">		
		
		<% if(!registroCorrecto) { %>
		
		<h2>Crea tu cuenta en "WALLAPOP"</h2>
		
		<form id="formulario" action="registro" method="post">
		

				<div id="info">
					
					<h1 id="titul"> DATOS DEL REGISTRO </h1>
						
						<p id="introduc">Para registrarse en nuestra p�gina web, deber� rellenar todos los campos. Cuando acabe se le mandar� un e-mail, para confirmar su cuenta. Una vez dentro, podr� modificar sus datos entrando en su perfil. </p>

				</div><br><br>
				
				<fieldset id="personal"><legend>INFORMACI�N DE USUARIO</legend><br>
					<p>E-mail:<input type="text" id="email" name="email" class="email form-control" tabindex="1"><br><br></p>
					<p>Contrase�a:<input class="form-control" id="contra1" type="password" name="contra1" tabindex="2"><br><br></p>
					<p>Confirmaci�n de contrase�a:<input class="form-control" id="contra2" type="password" name="contrasena" tabindex="3"><br><br></p>
				</fieldset><br><br>
		
				<fieldset><legend>INFORMACI�N PERSONAL</legend><br>
					<p>Nombre de Usuario:<input id="nomusu" class="form-control" type="text" name="nomusu" tabindex="4"><br><br></p>
					<p>Apellidos:<input id="apellidos" class="form-control" type="text" name="apellidos" tabindex="5"><br><br></p>
					<p>Provincia:<input id="prov" class="form-control" type="text" name="prov" tabindex="6"><br><br></p>
					
				</fieldset><br><br>
				<% if(usuarioExistente) { %>
				<div><p style="color:red;">El correo introducido ya existe.</p></div>
				<% } %>
				<input type="submit" value="Enviar" onclick="return validacion();" class="btn btn-info">
		</form>
	
		<% } else  { %>
		
		<h2>Ya estas en "WALLAPOP"</h2>
		
		<div id="existe" title="Bienvenido">
		<p>Gracias por registrarse en nuestra p�gina. Cuando sus datos hayan sido verificados se le activar� la cuenta y podr� empezar a usar nuestros servicios. </p>
		</div>
<% } %>
		</div>

      <div class="footer">
        <p>&copy; 2016 Wallapop, Inc.</p>
      </div>

    </div> 
  </body>
</html>