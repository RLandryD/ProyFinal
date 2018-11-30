/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.persistencia;

import app.modelo.Cliente;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Acceso01
 */
public class ClienteBD {
    //Conexión con MYSQL
      static private String URL = "jdbc:mysql://localhost:3306/libreria";
      static private String drive = "com.mysql.jdbc.Driver";
      static private String usuBD = "root";
      static private String contrasenaBD = "";
      static private Connection conexion;

    public static String getURL() {
        return URL;
    }

    public static void setURL(String URL) {
        ClienteBD.URL = URL;
    }

    public static String getDrive() {
        return drive;
    }

    public static void setDrive(String drive) {
        ClienteBD.drive = drive;
    }

    public static String getUsuBD() {
        return usuBD;
    }

    public static void setUsuBD(String usuBD) {
        ClienteBD.usuBD = usuBD;
    }

    public static String getContrasenaBD() {
        return contrasenaBD;
    }

    public static void setContrasenaBD(String contrasenaBD) {
        ClienteBD.contrasenaBD = contrasenaBD;
    }

    public static Connection getConexion() {
        return conexion;
    }

    public static void setConexion(Connection conexion) {
        try{
        ClienteBD.conexion = conexion;
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
    }
      
    public void agregar(Cliente c) throws SQLException{
       
        Statement st;
        ResultSet rs;
        String sql;
        
        //Abrir la base de datos
        abrir();
        
        //Insertar en la BD
        String alias = c.getAlias();
        String contrasena = c.getContrasena();
        String nombre = c.getNombre();
        String app = c.getApp();
        String apm = c.getApm();
        String gen = c.getgen();
        String fnac = c.getFecha();
        int tel = c.getTel();
        String pais = c.getPais();
        String ciudad = c.getCiudad();
        String col = c.getColonia();
        String calle = c.getCalle();
        String edo = c.getEstado();
        int cp = c.getCodPos();
        int next = c.getNumExt();
        int nint = c.getNumInt();
        String genfav = c.getGenFav();
        String email = c.getEmail();
        try{
        sql = "insert into usuarios values("
                + null + ",'"
                + nombre + "','"
                + app + "','"
                + apm + "','"
                + gen + "','"
                + fnac + "',"
                + tel + ",'"
                + pais + "','"
                + edo + "','"
                + ciudad + "','"
                + col + "','"
                + calle + "','"
                + cp + "',"
                + next + ","
                + nint + ",'" 
                + alias + "','"
                + contrasena + "','C','"
                + email +
                genfav + "',1)";
        System.out.println("Correcto");
            System.out.println(sql);
        st = conexion.createStatement();
        st.executeUpdate(sql);
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
        
    }
    
    public static ArrayList<Cliente> TodosClientes() throws SQLException, IOException {
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        Cliente c = null;
        int controlarCliente = 0;
        //Abrir la base de datos
        abrir();
        // Implementacion
        String sql = "SELECT * FROM USUARIOS";

        Statement st;
        ResultSet rs;
        st = conexion.createStatement();
        rs = st.executeQuery(sql);
        try {
        while (rs.next()) {
            controlarCliente++;
            c.setId(rs.getInt("ID_USUARIO"));
            c.setTel(rs.getInt("Tel"));
            c.setNumExt(rs.getInt("NExt"));
            c.setNint(rs.getInt("NInt"));
            c.setCodPos(rs.getInt("CP"));
            c.setApp(rs.getString("ApellidoP"));
            c.setApm(rs.getString("ApellidoM"));
            c.setGen(rs.getString("Genero"));
            c.setFecha(rs.getString("Fnac"));
            c.setPais(rs.getString("Pais"));
            c.setEstado(rs.getString("Estado"));
            c.setCiudad(rs.getString("Ciudad"));
            c.setColonia(rs.getString("Colonia"));
            c.setCalle(rs.getString("Calle"));
            c.setGenFav(rs.getString("GenFav"));
            c.setAlias(rs.getString("ALIAS"));
            c.setNombre(rs.getString("NOMBRE"));
            c.setContrasena(rs.getString("CONTRASENA"));
            c.setEmail(rs.getString("EMAIL"));
            c.setTipo(rs.getString("Tipo"));
            System.out.println("Correcto");
            lista.add(c);
        }
        } catch (Exception e){
            System.out.println(e.getMessage());
        }

        return lista;
    }
    
    public Cliente buscar(int id) throws SQLException{
        Cliente c = null;
        
        //Abrir la base de datos
        abrir();
        // Implementacion
        String sql = "SELECT * FROM USUARIOS WHERE "
                + "id_usuario = " + id;
        
        Statement st;
        ResultSet rs;
        st = conexion.createStatement();
        rs = st.executeQuery(sql);
        try{
        while (rs.next()) {
            c = new Cliente(); 
            c.setId(rs.getInt("ID_USUARIO"));
            c.setTel(rs.getInt("Tel"));
            c.setNumExt(rs.getInt("NExt"));
            c.setNint(rs.getInt("NInt"));
            c.setCodPos(rs.getInt("CP"));
            c.setApp(rs.getString("ApellidoP"));
            c.setApm(rs.getString("ApellidoM"));
            c.setGen(rs.getString("Genero"));
            c.setFecha(rs.getString("Fnac"));
            c.setPais(rs.getString("Pais"));
            c.setEstado(rs.getString("Estado"));
            c.setCiudad(rs.getString("Ciudad"));
            c.setColonia(rs.getString("Colonia"));
            c.setCalle(rs.getString("Calle"));
            c.setGenFav(rs.getString("GenFav"));
            c.setAlias(rs.getString("ALIAS"));
            c.setNombre(rs.getString("NOMBRE"));
            c.setContrasena(rs.getString("CONTRASENA"));
            c.setEmail(rs.getString("EMAIL"));
            c.setTipo(rs.getString("Tipo"));
            System.out.println("Correcto");
        }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        return c;
    }
    
    public Cliente buscar(String alias, String contrasena) throws SQLException {
        Cliente c = null;
        ResultSet rs;
        Statement st;
        String sentenciaSQL;

        try{
        sentenciaSQL = "SELECT * FROM USUARIOS WHERE "
                + "Usuario = " + "'" + alias + "'"
                + " AND CONTRA = " + "'" + contrasena + "'";

        st = conexion.createStatement();
        rs = st.executeQuery(sentenciaSQL);

        // Construir objeto de respuesta
        while (rs.next()) {
            c = new Cliente(); 
            c.setId(rs.getInt("ID_USUARIO"));
            c.setTel(rs.getInt("Tel"));
            c.setNumExt(rs.getInt("NExt"));
            c.setNint(rs.getInt("NInt"));
            c.setCodPos(rs.getInt("CP"));
            c.setApp(rs.getString("ApellidoP"));
            c.setApm(rs.getString("ApellidoM"));
            c.setGen(rs.getString("Genero"));
            c.setFecha(rs.getString("Fnac"));
            c.setPais(rs.getString("Pais"));
            c.setEstado(rs.getString("Estado"));
            c.setCiudad(rs.getString("Ciudad"));
            c.setColonia(rs.getString("Colonia"));
            c.setCalle(rs.getString("Calle"));
            c.setGenFav(rs.getString("GenFav"));
            c.setAlias(rs.getString("ALIAS"));
            c.setNombre(rs.getString("NOMBRE"));
            c.setContrasena(rs.getString("CONTRASENA"));
            c.setEmail(rs.getString("EMAIL"));
            c.setTipo(rs.getString("Tipo"));
            System.out.println("Correcto");
        }
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        return c;
    }
    
    public void modificar(Cliente c) throws SQLException{
        Statement st;
        try{
        int id = c.getId();
        String alias = c.getAlias();
        String contrasena = c.getContrasena();
        String nombre = c.getNombre();
        String app = c.getApp();
        String apm = c.getApm();
        String gen = c.getgen();
        String fnac = c.getFecha();
        int tel = c.getTel();
        String pais = c.getPais();
        String ciudad = c.getCiudad();
        String col = c.getColonia();
        String calle = c.getCalle();
        String edo = c.getEstado();
        int cp = c.getCodPos();
        int next = c.getNumExt();
        int nint = c.getNumInt();
        String genfav = c.getGenFav();
        String email = c.getEmail();
        
        String sql = "UPDATE USUARIOS SET "
                + "nombre= '" + nombre + "',"
                + "ApellidoP = '" + app + "',"
                + "ApellidoM = '" + apm + "',"
                + "Genero = '" + gen + "',"
                + "FNac = '" + fnac + "',"
                + "Tel = " + tel + ","
                + "Pais = '" + pais + "',"
                + "Estado = '" + edo + "',"
                + "Ciudad = '" + ciudad + "',"
                + "Colonia = '" + col + "',"
                + "Calle = '" + calle + "',"
                + "NExt = " + next + ","
                + "Nint = " + nint + ","
                + "CP = " + cp + ","
                + "GenFav = '" + genfav + "',"
                + "contrasena = '" + contrasena + "',"
                + "alias = '" + alias + "',"
                + "email = '" + email + "' where id_usuario = " + id ;
        st = conexion.createStatement();
        st.execute(sql);
        System.out.println("Correcto");
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    public void eliminar(int id) throws SQLException{
        try{
        Statement st;
        String sql = "delete from usuarios where ID_usuario ="+id;
        st = conexion.createStatement();
        st.execute(sql);
        System.out.println("Correcto");
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    
    
    public static void abrir() throws SQLException{
        
        conexion = DriverManager.getConnection(URL, usuBD, contrasenaBD);
    }
    
    public void cerrar() throws SQLException{
        conexion.close();
    }
}
