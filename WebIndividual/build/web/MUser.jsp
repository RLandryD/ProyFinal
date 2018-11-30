<%-- 
    Document   : MUser
    Created on : 29/11/2018, 10:15:44 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTDXHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
   <head>
	<title>
	Modificar información
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
		
		<meta name="viewport" content="width=device-width, initial-scale=1" charset = "utf-8">
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="js/listas.js" type="text/javascript"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
	<script type = "text/javascript">
	
	
	document.getElementById("Pais").value = "<?php echo $mostrar['Pais'];?>";
	function Validar(){
	
	var letters = /^[A-Za-z. ]+$/;
	var num = /^[0-9]+$/;

	if (document.getElementById('Nombre').value.match(letters)){
	if (document.getElementById('AP').value.match(letters)){
	if (document.getElementById('AM').value.match(letters)){
	if (document.getElementById('Col').value.match(letters)){
	if (document.getElementById('Calle').value.match(letters)){
	if (document.getElementById('NExt').value.match(num)){
	if (document.getElementById('Con').value === document.getElementById('CCon').value){
	if (document.getElementById('Correo').value === document.getElementById('CCorreo').value){
	return true;
	} else {
	alert('Los correos no coinciden');
	document.getElementById('Correo').focus();
	return false;
	}
	} else {
	alert('Las contraseñas no coinciden');
	document.getElementById('Con').focus();
	return false;
	}
	} else {
	alert('Número exterior no válido');
	document.getElementById('NExt').focus();
	return false;
	}
	} else {
	alert('Calle no válida');
	document.getElementById('Calle').focus();
	return false;
	}
	}else {
	alert('Colonia no válida');
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
	alert('El nombre no está bien escrito');
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
		  <li><a href="Catalogo.jsp"><i class="fas fa-book" aria-hidden="true"></i></a></li>
          <li><a href="Carrito.jsp"><i class="fas fa-shopping-cart" aria-hidden="true"></i></a></li>
          <li class="active"><a href="Form perfil.html"><i class="fas fa-user" aria-hidden="true"></i></a></li>
		  <li><a href="Reporte.jsp"><i class="fas fa-file-invoice" aria-hidden="true"></i></a></li>
          <li><a href="#"><i class="fas fa-truck" aria-hidden="true"></i></a></li>
        
        
        
        
      </ul>
    </div><!-- /.navbar-collapse -->
      </div><!-- /.container-collapse -->
  </nav>
  <body>
  
  
  
  <!-- Espacio de inicio-->
	<form action ="control/actualizar_user.php" method="post" onsubmit = "return Validar();">
	
	<div class="container">
	<div class="row main">
	<div class="main-login main-center">
	
	<b><i>
	
	<h3>Informacion personal</h3>
	</b></i>
	Nombre:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				<input type="text" value= "<?php echo $mostrar['Nombre'];?>"
				class="form-control" required="required"
				 name="Nombre" id="Nombre"
				 >
		</div>
	</div>
	<br>
	Apellido Paterno:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>	
			
				<input type="text"
				value= "<?php echo $mostrar['ApellidoP'];?>"
				class="form-control" required="required"
				name="AP" id="AP"  placeholder="Apellido Paterno "/>
		
		</div>
	</div>
	<br>
	
	Apellido Materno:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>	
				<input type="text" value= "<?php echo $mostrar['ApellidoM'] ?>"
				class="form-control" required="required" name="AM" id="AM"  placeholder="Apellido Materno"/>
		</div>
	</div>
	<br>
	<font color="yellow">
	Favor de esleccionar nuevamente su genero
	</font>
	Genero<br>
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
				<input type="date"value= "<?php echo $mostrar['FNac'];?>"
				class="form-control" required="required" name="bday" id = "bday"></input>
				</font>
				
		</div>
	</div>
	
	Telefono:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>	
				<input type="text" value= "<?php echo $mostrar['Tel'];?>"
				class="form-control" required="required" name="Tel" id="Tel"  placeholder="#"/>
		</div>
	</div>
	<br>
	
	
	<br><br>
	
	
	<b><i>
	<h3>Informacion de entrega</h3>
	</b></i>
	
   Pais:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="fa fa-map fa" aria-hidden="true"></i></span>	
				<font color = "black">
						<input type="text" value= "<?php echo $mostrar['Pais'] ?>"
				class="form-control" required="required" name="Pais" id="Pais"  placeholder="Pa�s"/>
						
				</font>
		</div>
	</div>
	<br>
	
	Estado
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>	
				
					<input type="text" value= "<?php echo $mostrar['Estado'] ?>"
				class="form-control" required="required" name="Estado" id="Estado"  placeholder="Pa�s"/>
				</font>
		</div>
	</div>
	<br>
	
	Ciudad 
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>	
				<font color = "black">
					<input type="text" value= "<?php echo $mostrar['Ciudad'] ?>"
				class="form-control" required="required" 
				name="Ciudad" id="Ciudad"  placeholder="Ciudad"/>
				</font>
		</div>
	</div>
	<br>
	Colonia:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		 <input type ="text" value= "<?php echo $mostrar['Colonia'];?>"
		 class="form-control" required="required" name="Col" id="Col"><br>
		</div>
	</div>
	Calle:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		 <input type ="text" value= "<?php echo $mostrar['Calle'];?>"
		 class="form-control" required="required" name="Cal" id="Cal"><br>
		</div>
	</div>
	Codigo postal:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		<input type ="text" value= "<?php echo $mostrar['CP'];?>"
		class="form-control" required="required" name="CP" id = "CP"><br>
		</div>
	</div>
	Numero Exterior:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		<input type ="text" value= "<?php echo $mostrar['NExt'];?>"
		class="form-control" required="required" name="NExt" id = "NExt"><br>
		</div>
	</div>
	Numero Interior:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-map fa" aria-hidden="true"></i></span>
		  <input type ="text" value= "<?php echo $mostrar['NInt'];?>"
		  class="form-control" name="NInt" id ="NInt">
		</div>
	</div>
	
	
	<br> <br> 
	
	
	<b><i>
	<h3>Informacion del perfil</h3>
	</b></i>
	Usuario:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-group fa" aria-hidden="true"></i></span>
				<input type ="text" value= "<?php echo $mostrar['Usuario'];?>"
				required="required" class="form-control" name="User" id = "User">
		</div>
	</div>
	Contrasena:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-group fa" aria-hidden="true"></i></span>
				<input type ="password" value= "<?php echo $mostrar['Contra'];?>"
				required="required" class="form-control" name="Con" id = "Con">
		</div>
	</div>
	<BR>
	Confirmar contrasena:
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-group fa" aria-hidden="true"></i></span>
				<input type ="password" value= "<?php echo $mostrar['Contra'];?>"
				required="required" class="form-control" name="CCon" id = "CCon">
		</div>
	</div>
	<BR>
	
	Correo electronico
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-envelope-o fa" aria-hidden="true"></i></span>
				<input type ="email" value= "<?php echo $mostrar['Correo'];?>"
				name = "Correo" class="form-control" id ="Correo"> <br>
		</div>
	</div>
	
	Confirmar correo electronico
	<div class="cols-sm-10">
		<div class="input-group">
			<span class="input-group-addon"><i class="fa fa-envelope-o fa" aria-hidden="true"></i></span>
	 <input type ="email" value= "<?php echo $mostrar['Correo'];?>"
	 name = "CCorreo" class="form-control" id ="CCorreo"> <br>
		</div>
	</div>
	
	<h5>Generos literarios favoritos <h5>
	
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
	</table>
	<br> 

	<font color= "black">
	<input font size = "20" type = "submit" value = "Modificar" name = "register">
	<input font size = "14" type = "reset" >
	</font>
	
	
	</div>
	</div>
	</div>
	</form>
	
   </body>
</html>