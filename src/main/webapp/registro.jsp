<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%boolean registroCorrecto = false;
    if(request.getAttribute("registroCorrecto") != null &&
    		   ((String) request.getAttribute("registroCorrecto")) == "true")
    		{
    			registroCorrecto = true;
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
	alert("Registro completado con �xito")
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
		
		<form id="formulario" action="registroServlet" method="post">
		

				<div id="info">
					
					<h1 id="titul"> DATOS DEL REGISTRO </h1>
						
						<p id="introduc">Para registrarse en nuestra p�gina web, deber� rellenar todos los campos. Cuando acabe se le mandar� un e-mail, para confirmar su cuenta. Una vez dentro, podr� modificar sus datos entrando en su perfil. </p>

				</div><br><br>
				
				<fieldset id="personal"><legend>INFORMACI�N DE USUARIO</legend><br>
					<p>E-mail:<input type="email" id="email" class="email form-control" tabindex="1"><br><br></p>
					<p>Contrase�a:<input class="form-control" id="contra1" type="password" name="contra" tabindex="2"><br><br></p>
					<p>Confirmaci�n de contrase�a:<input class="form-control" id="contra2" type="password" name="contrase�a" tabindex="3"><br><br></p>
				</fieldset><br><br>
		
				<fieldset><legend>INFORMACI�N PERSONAL</legend><br>
					<p>Nombre de Usuario:<input id="nomusu" class="form-control" type="text" name="nombre" tabindex="4"><br><br></p>
					<p>Apellidos:<input id="apellidos" class="form-control" type="text" name="apellidos" tabindex="5"><br><br></p>
					<p>Ciudad de residencia:
					<select name="prov" id="prov" class="form-control">
					<option value="0">Selecciona</option>
					<option value="1">�lava</option>
					<option value="2">Albacete</option>
					<option value="3">Alicante</option>
					<option value="4">Almer�a</option>
					<option value="5">Asturias</option>
					<option value="6">�vila</option>
					<option value="7">Badajoz</option>
					<option value="8">Barcelona</option>
					<option value="9">Burgos</option>
					<option value="10">C�ceres</option>
					<option value="11">C�diz</option>
					<option value="12">Cantabria</option>
					<option value="13">Castell�n</option>
					<option value="14">Ciudad Real</option>
					<option value="15">C�rdoba</option>
					<option value="16">La Coru�a</option>
					<option value="17">Cuenca</option>
					<option value="18">Gerona</option>
					<option value="19">Granada</option>
					<option value="20">Guadalajara</option>
					<option value="21">Guip�zcoa</option>
					<option value="22">Huelva</option>
					<option value="23">Huesca</option>
					<option value="24">Islas Baleares</option>
					<option value="25">Ja�n</option>
					<option value="26">Le�n</option>
					<option value="27">L�rida</option>
					<option value="28">Lugo</option>
					<option value="29">Madrid</option>
					<option value="30">M�laga</option>
					<option value="31">Murcia</option>
					<option value="32">Navarra</option>
					<option value="33">Orense</option>
					<option value="34">Palencia</option>
					<option value="35">Las Palmas</option>
					<option value="36">Pontevedra</option>
					<option value="37">La Rioja</option>
					<option value="38">Salamanca</option>
					<option value="39">Santa Cruz de Tenerife</option>
					<option value="40">Segovia</option>
					<option value="41">Sevilla</option>
					<option value="42">Soria</option>
					<option value="43">Tarragona</option>
					<option value="44">Teruel</option>
					<option value="45">Toledo</option>
					<option value="46">Valencia</option>
					<option value="47">Valladolid</option>
					<option value="48">Vizcaya</option>
					<option value="49">Zamora</option>
					<option value="50">Zaragoza</option>
					<option value="51">Ceuta</option>
					<option value="52">Melilla</option>
		</select>
		</p><br><br>
					
				</fieldset><br><br>
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