<%-- 
    Document   : Catálogo
    Created on : 21/10/2018, 03:35:57 PM
    Author     : win 10
--%>

<%@page import="java.util.Arrays"%>
<%@page import="Controladores.LibrosJpaController"%>
<%@page import="Modelo.Libros"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>
            Catálogo de libros
        </title>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="CSS/style.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"></script>

    </head>

    <!-- Barra de menú-->

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

            <ul class="nav navbar-nav navbar-center">
                <br/>
                <input id="buscar" class = "srchTxt" type ="text" placeholder="Buscar"> 
            </ul>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                    <li class="active"><a href="Catalogo.jsp"><i class="fas fa-book" aria-hidden="true"></i></a></li>
                    <li><a href="Carrito.jsp"><i class="fas fa-shopping-cart" aria-hidden="true"></i></a></li>
                    <li><a href="http://localhost/9no/P%20individual/Form%20perfil.html"><i class="fas fa-user" aria-hidden="true"></i></a></li>
                    <li><a href="Reporte.jsp"><i class="fas fa-file-invoice" aria-hidden="true"></i></a></li>


                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-collapse -->
    </nav>
    <!-- Espacio de inicio-->

    <br/><br/><br/><br/>
    <body>
        <form action="Comprar.jsp">
        <center>
            <a href ="Form libroA.jsp"> Agregar </a><br/>
            <a href = "Mod libroA.jsp"> Modificar </a><br/>
            <a href = "Baja libroA.jsp"> Dar de baja </a><br/>
            <a href ="Alta libroA.jsp"> Recuperar libros </a><br>
        
        <!-- Productos más vendidos -->
        <div align="center">
            <div class="container">
                <div class="row">
                    <h2>Productos más comprados</h2>
                </div>

                <div class="row">
                    <div class='col-md-8'>
                        <div class="carousel slide media-carousel" id="media">
                            <div class="carousel-inner">
                                <div class="item  active">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class = "thumbnail">
                                                <a href = "#"><img src = "img/El principito.jpg" alt = "Compra más" style = "width:150px; height:225px;"/></a>
                                                <div class = "caption">
                                                    <h5>El principito</h5>
                                                    <h4><a class = "btn" href = "#"> Ver</a>
                                                        <span class = "pull-right">$200</span>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>

                                        <div class = "col-md-4">
                                            <div class = "thumbnail">
                                                <a href = "#"><img src = "img/Digital Image Processing.jpg" alt = "Compra más" style = "width:150px; height:225px;"/>
                                                </a>
                                                <div class = "caption">
                                                    <h5>Digital Image Processing</h5>
                                                    <h4><a class = "btn" href = "#"> Ver</a>
                                                        <span class = "pull-right">$250</span>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "col-md-4">
                                            <div class = "thumbnail">
                                                <a href = "#"><img src = "img/Alicia en el pais de las maravillas.jpg" alt = "Compra más" style = "width:150px; height:225px;"/>
                                                </a>
                                                <div class = "caption">
                                                    <h5>Alicia en el pais de las maravillas</h5>
                                                    <h4><a class = "btn" href = "#"> Ver</a>
                                                        <span class = "pull-right">$250</span>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class = "item">
                                    <div class = "row">
                                        <div class = "col-md-4">
                                            <div class = "thumbnail">

                                                <a href = "#"><img src = "img/El senor de los anillos.jpg" alt = "Compra más" style = "width:150px; height:225px;"/>
                                                </a>
                                                <div class = "caption">
                                                    <h5>El senor de los anillos</h5>
                                                    <h4><a class = "btn" href = "#"> Ver</a>
                                                        <span class = "pull-right">$250</span>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>
                                        <div class = "col-md-4">
                                            <div class = "thumbnail">

                                                <a href = "#"><img src = "img/Historia de dos ciudades.jpg" alt = "Compra más" style = "width:150px; height:225px;"/>
                                                </a>
                                                <div class = "caption">
                                                    <h5>Historia de dos ciudades</h5>
                                                    <h4><a class = "btn" href = "#"> Ver</a>
                                                        <span class = "pull-right">$250</span>
                                                    </h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a data-slide="prev" href="#media" class="left carousel-control">‹</a>
                        <a data-slide="next" href="#media" class="right carousel-control">›</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
</center>

        <br/><br/><br/>
        <!--Catálogo de libros -->
        
            <div class="container">
                <div class="row">
                    <!-- BEGIN PRODUCTS -->
                    <%
                        EntityManagerFactory emf = Persistence.createEntityManagerFactory("WebIndividualPU");
                        EntityManager em = emf.createEntityManager();
                        LibrosJpaController libr = new LibrosJpaController(emf);

                        String titulo, id, editorial, autor,
                                genero, descripcion;
                        float costo;
                        boolean activo;
                        int existencia;

                        for (int i = 0; i < libr.findLibrosEntities().size(); i++) {

                            activo = libr.findLibrosEntities().get(i).getActivo();

                            if (activo == false) {
                                continue;
                            }
                            titulo = Arrays.toString(libr.findLibrosEntities().get(i).getTitulo().split(","));
                            id = libr.findLibrosEntities().get(i).getIdLibro().toString();
                            editorial = Arrays.toString(libr.findLibrosEntities().get(i).getEditorial().split(","));
                            autor = Arrays.toString(libr.findLibrosEntities().get(i).getAutor().split(","));
                            genero = Arrays.toString(libr.findLibrosEntities().get(i).getGenero().split(","));
                            costo = libr.findLibrosEntities().get(i).getCosto();
                            existencia = libr.findLibrosEntities().get(i).getExistencia();
                            descripcion = Arrays.toString(libr.findLibrosEntities().get(i).getDescripcion().split(","));

                            titulo = titulo.replace("[", "");
                            titulo = titulo.replace("]", "");
                            id = id.replace("[", "");
                            id = id.replace("]", "");
                            editorial = editorial.replace("[", "");
                            editorial = editorial.replace("]", "");
                            autor = autor.replace("[", "");
                            autor = autor.replace("]", "");
                            genero = genero.replace("[", "");
                            genero = genero.replace("]", "");
                            descripcion = descripcion.replace("[", "");
                            descripcion = descripcion.replace("]", "");
                            id = id.replace(" ", "");
                            String titimg = titulo + ".jpg";


                    %>

                    <div class="col-md-3 col-sm-6">
                        <span class="thumbnail">
                            <img src="img/<%                                out.println(titimg);
                                 %>" alt="..."/>
                            <h4><%
                                out.println(titulo);
                                %></h4>
                            <p><%
                                out.println(descripcion);
                                %> </p>
                            <hr class="line">
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <p class="price">$<%
                                            out.println(costo);
                                            %>
                                        </p>
                                        <p> Existencia <br/>
                                            <%
                                                out.println(existencia);
                                                %>
                                        </p>
                                        
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <button type="submit" class="btn btn-success right" name = "id" value = "<%out.print(id);%>"> Comprar</button>
                                    </div>

                                </div>
                        </span>
                    </div>
                    <%
                        }
                    %>

                    <!-- END PRODUCTS -->
                </div>
            </div>
        </form>
    </body>
</html>