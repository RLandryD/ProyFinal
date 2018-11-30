<%-- 
    Document   : Reporte
    Created on : 21/10/2018, 03:39:17 PM
    Author     : win 10
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Libros"%>
<%@page import="Controladores.LibrosJpaController"%>
<%@page import="Controladores.ReportesJpaController"%>
<%@page import="Modelo.Reportes"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <?php
    require_once("control/conexion.php");
    ?>

    <head>
        <title>
            Editar perfil
        </title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
                <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
                <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
                <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
                <link href="CSS/style.css" rel="stylesheet">
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"></script>
                        <link href="CSS/style.css" rel="stylesheet">
                            <link href="CSS/style2.css" rel="stylesheet">
                                <script src="js/javascript2.js" type="text/javascript"></script>
                                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

                                        <!-- Collect the nav links, forms, and other content for toggling -->
                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                                            <ul class="nav navbar-nav navbar-right">
                                                <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                                                <li><a href="Catalogo.jsp"><i class="fas fa-book" aria-hidden="true"></i></a></li>
                                                <li><a href="Carrito.jsp"><i class="fas fa-shopping-cart" aria-hidden="true"></i></a></li>
                                                <li><a href="Form perfil.jsp"><i class="fas fa-user" aria-hidden="true"></i></a></li>
                                                <li class="active"><a href="Reporte.jsp"><i class="fas fa-file-invoice" aria-hidden="true"></i></a></li>


                                            </ul>
                                        </div><!-- /.navbar-collapse -->
                                    </div><!-- /.container-collapse -->
                                </nav>
                                <!--Fin de barra de menú-->
                                                <body>

                                                    <head>
                                                        
                        
                                                        
  <script type="text/javascript">
  window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: "Ventas del mes"
      },
      data: [
      {
       type: "doughnut",
       dataPoints:  [
           <%
                        EntityManagerFactory emf = Persistence.createEntityManagerFactory("WebIndividualPU");
                        EntityManager em = emf.createEntityManager();
                        ReportesJpaController rep = new ReportesJpaController(emf);
                            
                        ArrayList<ArrayList> arr = new ArrayList<ArrayList>();
                        String t;
                        int fecha, c, cantidad[] = null;
                        fecha = 11;

                        for (int i = 0; i < rep.findReportesEntities().size(); i++) {
                            t = Arrays.toString(rep.findReportesEntities().get(i).getLibro().split(","));
                            c = rep.findReportesEntities().get(i).getCantidad();
                            System.out.println(t);
                            
                            

                            t = t.replace("[", "");
                            t = t.replace("]", "");
                            arr.add(new ArrayList());
                            arr.get(arr.size()-1).add(t);
                            System.out.println(cantidad);
                            %>
           
       {  y: <%out.print(c);%>, indexLabel: "<%out.print(arr);%>" },
               <%
                   }
                %>
       ]
     }
     ]
   });

    chart.render();
  };
  </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script></head>
                                                    <br/><br/></br><br/>
    <div id="chartContainer" style="height: 300px; width: 100%;">
    </div>
