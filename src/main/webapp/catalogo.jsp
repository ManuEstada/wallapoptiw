<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/icono.ico">
    <title>WALLAPOP: Cat�logo de productos</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/catalogo.css" rel="stylesheet">
	<link href="css/login.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
	$("#avanzada").click(function(){
		$("#busqueda_avanzada").toggle();
	});
	});
	</script>
  </head>

  <body>
  
    <div class="container" id="container">
		<div class="header clearfix">
			<img src="images/logo.png" alt="Error en la imagen">
			<h2 class="text-muted">WALLAPOP</h2>
			<p>Encuentra tu producto ideal</p>
		</div>
	
	<table id="buscador">
		<tr><td id="celda1"><b>Buscador de productos</b></td></tr> 
		<tr id="fila2">
		<td id="celda2">
		<span>Buscar producto:<input type="text" class="buscarProd"></span>
		
		<span><button value="Buscar" id="buscar" class="buscar btn btn-primary">Buscar</button></span><br><br>
		</td> 
		</tr> 
		<tr ><td id="avanzada"><a class="avanzada">+ B�squeda avanzada</a></td></tr>
		
		<tr id="busqueda_avanzada">
		<td>
		<ul id="filtrado">
			<li>Categoria: <select class="categorias" id="categ">
					<option value="vacio" selected>Cualquier categor�a</option>
					<option value="mobiliario">Mobiliario</option>
					<option value="vehiculos">Veh�culos</option>
					<option value="moda">Moda y belleza</option>
					<option value="electronica">Electr�nica</option>
					<option value="ocio">Ocio y deportes</option>
					<option value="otros">Otros</option>
			</select></li>
			<li>Ciudad: <select class="provincias" id="prov">
					<option value="vacio" selected>Cualquier provincia</option>
					<option value="�lava">�lava</option>
					<option value="Albacete">Albacete</option>
					<option value="Alicante">Alicante</option>
					<option value="Almer�a">Almer�a</option>
					<option value="Asturias">Asturias</option>
					<option value="�vila">�vila</option>
					<option value="Badajoz">Badajoz</option>
					<option value="Barcelona">Barcelona</option>
					<option value="Burgos">Burgos</option>
					<option value="C�ceres">C�ceres</option>
					<option value="C�diz">C�diz</option>
					<option value="Cantabria">Cantabria</option>
					<option value="Castell�n">Castell�n</option>
					<option value="Ciudad Real">Ciudad Real</option>
					<option value="C�rdoba">C�rdoba</option>
					<option value="La Coru�a">La Coru�a</option>
					<option value="Cuenca">Cuenca</option>
					<option value="Gerona">Gerona</option>
					<option value="Granada">Granada</option>
					<option value="Guadalajara">Guadalajara</option>
					<option value="Guip�zcoa">Guip�zcoa</option>
					<option value="Huelva">Huelva</option>
					<option value="Huesca">Huesca</option>
					<option value="Islas Baleares">Islas Baleares</option>
					<option value="Ja�n">Ja�n</option>
					<option value="Le�n">Le�n</option>
					<option value="L�rida">L�rida</option>
					<option value="Lugo">Lugo</option>
					<option value="Madrid">Madrid</option>
					<option value="M�laga">M�laga</option>
					<option value="Murcia">Murcia</option>
					<option value="Navarra">Navarra</option>
					<option value="Orense">Orense</option>
					<option value="Palencia">Palencia</option>
					<option value="Las Palmas">Las Palmas</option>
					<option value="Pontevedra">Pontevedra</option>
					<option value="La Rioja">La Rioja</option>
					<option value="Salamanca">Salamanca</option>
					<option value="Santa Cruz de Tenerife">Santa Cruz de Tenerife</option>
					<option value="Segovia">Segovia</option>
					<option value="Sevilla">Sevilla</option>
					<option value="Soria">Soria</option>
					<option value="Tarragona">Tarragona</option>
					<option value="Teruel">Teruel</option>
					<option value="Toledo">Toledo</option>
					<option value="Valencia">Valencia</option>
					<option value="Valladolid">Valladolid</option>
					<option value="Vizcaya">Vizcaya</option>
					<option value="Zamora">Zamora</option>
					<option value="Zaragoza">Zaragoza</option>
					<option value="Ceuta">Ceuta</option>
					<option value="Melilla">Melilla</option>		
			</select></li>
			<li>Vendedor: <input type="text" class="vendedor"></li>
			<li>T�tulo: <input type="text" class="tituloAvanzada"></li>
			<li>Descripci�n: <input type="text" class="descripcionAvanzada"></li>
		</ul> 
		</td>
	</tr>
	</table><br><br>
	
		<div class="footer">
			<p>&copy; 2016 Wallapop, Inc.</p>
		</div>

    </div> 
  </body>
</html>
