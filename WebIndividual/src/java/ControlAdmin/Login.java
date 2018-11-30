/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControlAdmin;

import app.modelo.Cliente;
import app.persistencia.ClienteBD;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Acceso01
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        response.setContentType("text/html;charset=UTF-8");
        
        String paginaRespuesta = "login.jsp";
        String mensaje = "";

        // Recibir los valores del formulario
        try{
        String nombre = request.getParameter("User");
        String contrasena = request.getParameter("Con");
            System.out.println("Éxito");
        } catch (Exception e){
            System.out.println(e.getMessage());
        }

        Cliente c = null;
        ClienteBD uDB = new ClienteBD();

        // Buscar al usuario en la base de datos
        /*try {
            uDB.abrir();
            c = uDB.buscar(nombre, contrasena);
            uDB.cerrar();
            System.out.println(c.getTipo());
            // Si son sus credenciales
            if (c == null) {
                mensaje = "Cliente o contraseña inválidos";
                request.setAttribute("mensaje", mensaje);
            } else {
                if (c.getTipo().contains("A")) {
                    // Es administrador
                    HttpSession session = request.getSession();
                    session.setAttribute("user", nombre);
                    //La configuracion de la session expira en 30 minutos
                    session.setMaxInactiveInterval(30 * 60);
                    Cookie userName = new Cookie("user", nombre);
                    userName.setMaxAge(30 * 60);
                    response.addCookie(userName);
                    
                    //response.sendRedirect("LoginExitoso.jsp");

                    paginaRespuesta = "Catalogo.jsp";//Pagina a las que se le mandara
                } if(c.getTipo().contains("C")){
                    //Es solo un vendedor
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("user", nombre);
                    //La configuracion de la session expira en 30 minutos
                    session.setMaxInactiveInterval(30 * 60);
                    Cookie userName = new Cookie("user", nombre);
                    userName.setMaxAge(30 * 60);
                    response.addCookie(userName);
                    paginaRespuesta = "CatalogoU.jsp";//Pagina a la que se le mandara
                    request.setAttribute("usuario", c);
                }else {
                    //Es un vendedor y aparte un comprador
                    HttpSession session = request.getSession();
                    session.setAttribute("user", nombre);
                    //La configuracion de la session expira en 30 minutos
                    session.setMaxInactiveInterval(30 * 60);
                    Cookie userName = new Cookie("user", nombre);
                    userName.setMaxAge(30 * 60);
                    response.addCookie(userName);
                    paginaRespuesta = "Catalogo.jsp";//Pagina a la que se le mandara
                    request.setAttribute("usuario", c);
                }
            }
        } catch (SQLException ex) {
            mensaje = ex.getMessage();
            request.setAttribute("mensaje", mensaje);
        }

        RequestDispatcher dispatcher
                = request.getRequestDispatcher(paginaRespuesta);
        dispatcher.forward(request, response);*/
    
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
