<%-- 
    Document   : Form libro
    Created on : 21/10/2018, 03:05:05 PM
    Author     : win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Agregar libros
        </title>

        <!-- Website CSS style -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
        <link href="CSS/bootstrap.min.css" rel="stylesheet"/>
        <link href="CSS/style.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>

        <!-- Website Font style -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"/>

        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'/>
        <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'/>

        <meta name="viewport" content="width=device-width, initial-scale=1" charset = "iso-8859-1"/>

        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="js/listas.js" type="text/javascript"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script type = "text/javascript">
        <script type = "text/javascript">
            function Validar(){

                    var letters = /^[A-Za-z. ]+$/;
            var num = /^[0-9]+$/;
            if (document.getElementById('Titulo').value.match(letters)){
            if (document.getElementById('Autor').value.match(letters)){
            if (document.getElementById('Editorial').value.match(letters)){
            if (document.getElementById('ISBN').value.match(num)){
            if (document.getElementById('Precio').value.match(num) &&
                    document.getElementById('Precio').value > 0){
            if (document.getElementById('Existencia').value.match(num) &&
                    document.getElementById('Existencia').value > 0){
            return true;
        } else {
                    alert('Existencia no válida');
            document.getElementById('Existencia').focus();
            return false;
        }
        } else {
            alert('Precio no válido');
            document.getElementById('Precio').focus();
            return false;
        }
            } else {
                    alert('ISBN no válido');
            document.getElementById('ISBN').focus();
            return false;
        }
        } else {
            alert('Editorial no válida');
            document.getElementById('Editorial').focus();
            return false;
            }
            } else{
            alert('Autor no válido');
            document.getElementById('Autor').focus();
            return false;
            }
            } else {
            alert('Título no válido');
            document.getElementById('Titulo').focus();
            return false;
            }
            
            }
            </script>
    </head>

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
                    <li class="active"><a href="Catalogo.jsp"><i class="fas fa-book" aria-hidden="true"></i></a></li>
                    <li><a href="Carrito.jsp"><i class="fas fa-shopping-cart" aria-hidden="true"></i></a></li>
                    <li><a href="Form perfil.jsp"><i class="fas fa-user" aria-hidden="true"></i></a></li>
                    <li><a href="Reporte.jsp"><i class="fas fa-file-invoice" aria-hidden="true"></i></a></li>

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-collapse -->
    </nav>

    <body>

        <div class="container">
            <div class="row main">
                <div class="main-login main-center">


                    <form action="LibrosA" method="post" onSubmit = "return Validar();">

                        <a href ="Mod libroA.jsp" style="color:#ffff14"> Modificar </a><br>
                        <a href = "Baja libroA.jsp" style="color:#ffff14"> Dar de baja </a><br>
                        <a href ="Alta libroA.jsp" style="color:#ffff14"> Recuperar libros </a><br>
                        <a href ="Catalogo.jsp" style="color:#ffff14"> Catálogo </a><br>

                        Identificador:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="id" id="id" required="required"  placeholder="Números únicamente"/>
                            </div>
                        </div>
                        <br>

                        Título:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="Titulo" id="Titulo" required="required"  placeholder="Título"/>
                            </div>
                        </div>
                        <br>
                        Autor:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Autor" id="Autor" required="required"  placeholder="Autor"/>
                            </div>
                        </div>
                        <br>

                        Editorial:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Editorial" id="Editorial" required="required"  placeholder="Editorial"/>
                            </div>
                        </div>
                        <br>

                        Año:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Ano" id="Editorial" required="required"  placeholder="Año"/>
                            </div>
                        </div>
                        <br>

                        ISBN:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="ISBN" id="ISBN" required="required"  placeholder="ISBN"/>
                            </div>
                        </div>
                        <br>

                        Género:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <font color = "black">

                                <select name="Genero" id="Genero" class="form-control" required="required">
                                    <option value disabled selected>Seleccione el género del libro</option>
                                    <option value="Ciencia"> Ciencia </option>
                                    <option value="Ciencia ficción"> Ciencia ficción </option>
                                    <option value="Comedia"> Comedia </option>
                                    <option value="Cuento"> Cuento </option>
                                    <option value="Drama"> Drama </option>
                                    <option value="Guerra"> Guerra </option>
                                    <option value="Historia"> Historia </option>
                                    <option value="Leyenda"> Leyenda </option>
                                    <option value="Mito"> Mito </option>
                                    <option value="Romance"> Romance </option>
                                    <option value="Suspenso"> Suspenso </option>
                                    <option value="Tragedia"> Tragedia </option>
                                    
                                </select>
                                </font>
                            </div>
                        </div>
                        <br>

                        Precio:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Precio" required="required" id="Precio"  placeholder="Precio"/>
                            </div>
                        </div>
                        <br>

                        Existencia:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Existencia" required="required" id="Existencia"  placeholder="Existencia"/>
                            </div>
                        </div>
                        <br>

                        Descripción:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Descripcion" required="required" id="Existencia"  placeholder="Descripción"/>
                            </div>
                        </div>
                        <br>

                        <font color= "black">
                        <input font size = "20" type = "submit" name="Agregar">
                        <input font size = "14" type = "reset" >
                        </font>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>