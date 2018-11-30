package ControlCliente;

import Controladores.LibrosJpaController;
import Controladores.ReportesJpaController;
import Controladores.VentasJpaController;
import Modelo.Libros;
import Modelo.Reportes;
import Modelo.Ventas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class Vender extends HttpServlet {
    
    EntityManagerFactory emf = Persistence
            .createEntityManagerFactory("WebIndividualPU");
    EntityManager em = emf.createEntityManager();
    Ventas ven = null;
    Reportes rep = null;
    VentasJpaController Vent = new VentasJpaController(emf);
    ReportesJpaController Rep = new ReportesJpaController(emf);
    LibrosJpaController lib = new LibrosJpaController(emf);
    Libros libr = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
            
            int id = Integer.parseInt(request.getParameter("id"));
            String titulo = lib.findLibros(id).getTitulo();
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            int existencia = lib.findLibros(id).getExistencia();
            float costo = Float.parseFloat(request.getParameter("Precio"));
            String usuario = request.getParameter("usuario");
            Date fecha = new Date();
            float total;
            libr = em.find(Libros.class, id);
            if (existencia >= cantidad){
                total = cantidad * costo;
                rep = new Reportes((fecha.getMonth()+1), titulo, cantidad);
            ven = new Ventas(usuario, id,
                    new Date((2000 + (fecha.getYear()%100)) + "/" + (fecha.getMonth()+1) + "/" + fecha.getDate() ),
                    cantidad, total);
            libr.setExistencia(existencia-cantidad);
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Se ha agregado el libro: " + id +"');");
            out.println("</script>");
            response.sendRedirect("Catalogo.jsp");
            Vent.create(ven);
            lib.edit(libr);
            Rep.create(rep);
            }
            
            
    }   catch (Exception ex) {
            
            System.out.println("Mensaje" + ex.getMessage());
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
