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
            Editar libros
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


                    <form action="ModlibrosA" method="post">

                        <a href ="Form libroA.jsp" style="color:#ffff14"> Agregar </a><br>
                        <a href = "Baja libroA.jsp" style="color:#ffff14"> Dar de baja </a><br>
                        <a href ="Alta libroA.jsp" style="color:#ffff14"> Recuperar libros </a><br>
                        <a href ="Catalogo.jsp" style="color:#ffff14"> Catálogo </a><br>

                        Identificador:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="id" id="id" placeholder="Números únicamente"/>
                            </div>
                        </div>
                        <br>

                        Título:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="Titulo" id="Titulo" placeholder="Título"/>
                            </div>
                        </div>
                        <br>
                        Autor:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Autor" id="Autor" placeholder="Autor"/>
                            </div>
                        </div>
                        <br>

                        Editorial:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Editorial" id="Editorial" placeholder="Editorial"/>
                            </div>
                        </div>
                        <br>

                        Año:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Ano" id="Ano" placeholder="Año"/>
                            </div>
                        </div>
                        <br>

                        ISBN:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="ISBN" id="ISBN" placeholder="ISBN"/>
                            </div>
                        </div>
                        <br>

                        <font color = "yellow">Género:(Siempre será pedido) </font>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <font color = "black">

                                <select name="Genero" id="Genero" class="form-control">
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
                                <input type="text" class="form-control" name="Precio" id="Precio"  placeholder="Precio"/>
                            </div>
                        </div>
                        <br>

                        Existencia:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Existencia" id="Existencia"  placeholder="Existencia"/>
                            </div>
                        </div>
                        <br>

                        Descripción:
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-book fa" aria-hidden="true"></i></span>	
                                <input type="text" class="form-control" name="Descripcion" id="Descripcion"  placeholder="Descripción"/>
                            </div>
                        </div>
                        <br>

                        <font color= "black">
                        <input font size = "20" type = "submit" value="Modificar">
                        <input font size = "14" type = "reset" >
                        </font>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>