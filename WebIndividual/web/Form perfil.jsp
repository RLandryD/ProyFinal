<%-- 
    Document   : Form perfil
    Created on : 29/11/2018, 10:06:44 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTDXHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
   <head>
	<title>
	Crear perfil
	</title>
	
	
		<!-- Website CSS style -->
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<link href="CSS/bootstrap.min.css" rel="stylesheet">
		<link href="CSS/style.css" rel="stylesheet">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="js/listas.js" type="text/javascript"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script type = "text/javascript">
	
	function Validar(){
	
	var letters = /^[A-Za-z. ]+$/;
	var num = /^[0-9]+$/;

	if (document.getElementById('Nombre').value.match(letters)){
	if (document.getElementById('AP').value.match(letters)){
	if (document.getElementById('AM').value.match(letters)){
	if (document.getElementById('Col').value.match(letters)){
	if (document.getElementById('Calle').value.match(letters)){
	if (document.getElementById('NExt').value.match(num)){
	if (document.getElementById('Con').value == document.getElementById('CCon').value){
	if (document.getElementById('Correo').value == document.getElementById('CCorreo').value){
	return true;
	} else {
	alert('Los correos no coinciden');
	document.getElementById('Correo').focus();
	return false;
	}
	} else {
	alert('Las contrase�as no coinciden');
	document.getElementById('Con').focus();
	return false;
	}
	} else {
	alert('N�mero exterior no v�lido');
	document.getElementById('NExt').focus();
	return false;
	}
	} else {
	alert('Calle no v�lida');
	document.getElementById('Calle').focus();
	return false;
	}
	}else {
	alert('Colonia no v�lida');
	document.getElementById('Col').focus();
	return false;
	}
	} else {
	alert('Error con el apellido materno');
	document.getElementById('AM').focus();
	return false;
	}
	} else {
	alert('Error con el apellido paterno');
	document.getElementById('AP').focus();
	return false;
	}
	} else {
	alert('El nombre no est� bien escrito');
	document.getElementById('Nombre').focus();
	return false;
	}
	}

	
	
	</script>
   </head>
   
   
	<!-- Barra de men�-->
   
   <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">LandryLibros</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a></li>
		  <li><a href="CatalogoU.jsp"><i class="fas fa-book" aria-hidden="true"></i></a></li>
          <li class="active"><a href="Form perfil.jsp"><i class="fas fa-user" aria-hidden="true"></i></a></li>
        
        
        
        
      </ul>
    </div><!-- /.navbar-collapse -->
      </div><!-- /.container-collapse -->
  </nav>
  <body>
  
  <!-- Espacio de inicio-->
	<form action ="control/agregaPerfil.php" method="post" onsubmit = "return Validar();">
	
	<div class="container">
	<div class="row main">
	<div class="main-login main-center">
	<font color="black">
	<A style="color:yellow" HREF = "Login.jsp"
	> <div align="center"> Ya tienes cuenta? Inicia sesión </div>
	</A>
	</font>
	<b><i>
	<h3>Información personal</h3>
	</b></i>
	Nombre:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				<input type="text" class="form-control" required="required" name="Nombre" id="Nombre"  placeholder="Nombre"/>
		</div>
	</div>
	<br>
	Apellido Paterno:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>	
				<input type="text" class="form-control" required="required" name="AP" id="AP"  placeholder="Apellido Paterno "/>
		</div>
	</div>
	<br>
	
	Apellido Materno:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>	
				<input type="text" class="form-control" required="required" name="AM" id="AM"  placeholder="Apellido Materno"/>
		</div>
	</div>
	<br>
	
	Género<br>
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-male fa" aria-hidden="true"></i></span>	
				<class="form-control">
				Masculino <input type = "radio" required="required"  name = "Genero" value = "M" id = "M">
		</div>
	</div>
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-female fa" aria-hidden="true"></i></span>
				<class="form-control">			
				Femenino <input type = "radio" required="required" name = "Genero" value = "F" id = "F"> 
		</div>
	</div>
	<br>
	Fecha de nacimiento:
	<div class="cols-sm-10">
		<div class="input-group">
		<font color ="black">
			<span class="input-group-addon"><i class="fa fa-calendar fa" aria-hidden="true"></i></span>
				<input type="date" class="form-control" required="required" name="bday" id = "bday"></input>
				</font>
				
		</div>
	</div>
	
	Teléfono:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>	
				<input type="text" class="form-control" required="required" name="Tel" id="Tel"  placeholder="#"/>
		</div>
	</div>
	<br>
	
	
	<br><br>
	
	
	<b><i>
	<h3>Información de entrega</h3>
	</b></i>
	
   Pais:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="fa fa-map fa" aria-hidden="true"></i></span>	
				<font color = "black">
						<select name="Pais" id="Pais" required="required" class="form-control" onchange="setStates();">
							<option value disabled selected>Selecciona tu pais de origen</option>
							<option value="Alemania">Alemania</option>
							<option value="Canada">Canada</option>
							<option value="Estados Unidos">Estados Unidos</option>
							<option value="Mexico">M�xico</option>
						</select>
				</font>
		</div>
	</div>
	<br>
	
	Estado
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>	
				<font color = "black">
					<select name="Estado" id="Estado" required="required" class="form-control" onchange="setCities();">
								<option value disabled selected>Selecciona tu estado</option>
								
					</select>
				</font>
		</div>
	</div>
	<br>
	
	Ciudad 
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>	
				<font color = "black">
					<select class="form-control" required="required" name="Ciudad" id="Ciudad">
								<option value disabled selected>Selecciona tu ciudad</option>
					</select>
				</font>
		</div>
	</div>
	<br>
	Colonia:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		 <input type ="text" class="form-control" required="required" name="Col" id="Col"><br>
		</div>
	</div>
	Calle:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		 <input type ="text" class="form-control" required="required" name="Cal" id="Cal"><br>
		</div>
	</div>
	C�digo postal:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		<input type ="text" class="form-control" required="required" name="CP" id = "CP"><br>
		</div>
	</div>
	Número Exterior:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		<input type ="text" class="form-control" required="required" name="NExt" id = "NExt"><br>
		</div>
	</div>
	Número Interior:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		  <input type ="text" class="form-control" name="NInt" id ="NInt">
		</div>
	</div>
	
	
	<br> <br> 
	
	
	<b><i>
	<h3>Información del perfil</h3>
	</b></i>
	Usuario:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-group fa" aria-hidden="true"></i></span>
				<input type ="text" required="required" class="form-control" name="User" id = "User">
		</div>
	</div>
	Contraseña:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-group fa" aria-hidden="true"></i></span>
				<input type ="password" required="required" class="form-control" name="Con" id = "Con">
		</div>
	</div>
	<BR>
	Confirmar contraseña:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-group fa" aria-hidden="true"></i></span>
				<input type ="password" required="required" class="form-control" name="CCon" id = "CCon">
		</div>
	</div>
	<BR>
	
	Correo electrónico
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-envelope-o fa" aria-hidden="true"></i></span>
				<input type ="email" name = "Correo" class="form-control" id ="Correo"> <br>
		</div>
	</div>
	
	Confirmar correo electrónico
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-envelope-o fa" aria-hidden="true"></i></span>
	 <input type ="email" name = "CCorreo" class="form-control" id ="CCorreo"> <br>
		</div>
	</div>
	
	
	<h5>Géneros literarios favoritos <h5>
	
	<div class="cols-sm-10">
		<div class="input-group">
	<table style="color:#ffffff" align="center">
	<tr>
	<td>Suspenso <input type = "checkbox" name = "Check" value = "Suspenso">
	<td>Tragedia <input type = "checkbox" name = "Check" value = "Tragedia">
	<td>Cuento <input type = "checkbox" name = "Check" value = "Cuento">
	<tr>
	<td>Romance <input type = "checkbox" name = "Check" value = "Romance">
	<td>Leyenda <input type = "checkbox" name = "Check" value = "Leyenda">
	<td>Drama <input type = "checkbox" name = "Check" value = "Drama">
	<tr>
	<td>Comedia <input type = "checkbox" name = "Check" value = "Comedia">
	<td>Ciencia <input type = "checkbox" name = "Check" value = "Ciencia">
	<td>Mito <input type = "checkbox" name = "Check" value = "Mito">
	</div>
	</div>
	</table
	<br> 

	<font color= "black">
	<input font size = "20" type = "submit" value = "Registrar" name = "register">
	<input font size = "14" type = "reset" >
	</font>
	
	
	</div>
	</div>
	</div>
	</form>
   </body>
</html>