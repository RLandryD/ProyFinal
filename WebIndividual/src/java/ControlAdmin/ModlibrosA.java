/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControlAdmin;

import Controladores.LibrosJpaController;
import Modelo.Libros;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author win 10
 */
public class ModlibrosA extends HttpServlet {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("WebIndividualPU");
    EntityManager em = emf.createEntityManager();
    Libros libr = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ModlibrosA</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ModlibrosA at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=iso-8859-1");
        try (PrintWriter out = response.getWriter()) {
            LibrosJpaController lib = new LibrosJpaController(emf);
            int id = Integer.parseInt(request.getParameter("id"));
            libr = em.find(Libros.class, id);

            System.out.println(request.getParameter("Genero"));
            if (!request.getParameter("Titulo").equals("")) {
                String titulo = request.getParameter("Titulo");
                libr.setTitulo(titulo);
            } else {
                System.out.println("Título vacío");
            }
            if (!request.getParameter("Autor").equals("")) {
                String autor = request.getParameter("Autor");
                libr.setAutor(autor);
            } else {
                System.out.println("Autor vacío");
            }

            if (!request.getParameter("Editorial").equals("")) {
                String editorial = request.getParameter("Editorial");
                libr.setEditorial(editorial);
            } else {
                System.out.println("Editorial vacío");
            }

            if (!request.getParameter("Ano").equals("")) {
                long año = Long.parseLong(request.getParameter("Ano"));
                libr.setAño(año);
            } else {
                System.out.println("Año vacío");
            }

            if (!request.getParameter("ISBN").equals("")) {
                long isbn = Long.parseLong(request.getParameter("ISBN"));
                libr.setIsbn(isbn);
            } else {
                System.out.println("ISBN vacío");
            }

            if (!request.getParameter("Genero").equals("null")) {
                String genero = request.getParameter("Genero");
                libr.setGenero(genero);
            } else {
                System.out.println("Genero vacío.");
            }

            if (!request.getParameter("Precio").equals("")) {
                float costo = Float.parseFloat(request.getParameter("Precio"));
                libr.setCosto(costo);
            } else {
                System.out.println("Costo vacío");
            }
            if (!request.getParameter("Existencia").equals("")) {
                int existencia = Integer.parseInt(request.getParameter("Existencia"));
                libr.setExistencia(existencia);
            } else {
                System.out.println("Existencia vacío");
            }
            if (!request.getParameter("Descripcion").equals("")) {
                String descripcion = request.getParameter("Descripcion");
                libr.setDescripcion(descripcion);
            } else {
                System.out.println("Descripción vacío");
            }
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Se ha modificado el libro: " + id + "');");
            out.println("</script>");
            lib.edit(libr);
            response.sendRedirect("Catalogo.jsp");
        } catch (Exception ex) {
            Logger.getLogger(ModlibrosA.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
