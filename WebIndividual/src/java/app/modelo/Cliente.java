/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.modelo;

/**
 *
 * @author Acceso01
 */
public class Cliente {
    private int id, tel, next, nint,cp;
    private String alias, app, apm, gen, genfav, fnac;
    private String nombre, pais, edo, ciudad, calle, col;
    private String contrasena, tipo;
    private String email;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGenFav() {
        return genfav;
    }

    public void setGenFav (String genfav){
        this.genfav = genfav;
    }
    
    public int getNumInt() {
        return nint;
    }
    
    public void setNint (int nint){
        this.nint = nint;
    }

    public int getNumExt() {
        return next;
    }
    
    public void setNumExt(int next){
        this.next = next;
    }

    public int getCodPos() {
        return cp;
    }

    public void setCodPos(int cp){
        this.cp = cp;
    }
    
    public String getEstado() {
        return edo;
    }

    public void setEstado(String edo){
        this.edo = edo;
    }
    
    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle){
        this.calle = calle;
    }
    
    public String getColonia() {
        return col;
    }
    
    public void setColonia(String col){
        this.col = col;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad){
        this.ciudad = ciudad;
    }
    
    public String getPais() {
        return pais;
    }
    
    public void setPais(String pais){
        this.pais = pais;
    }

    public int getTel() {
        return tel;
    }
    
    public void setTel(int tel){
        this.tel = tel;
    }

    public String getFecha() {
        return fnac;
    }
    
    public void setFecha(String fnac){
        this.fnac = fnac;
    }

    public String getgen() {
        return gen;
    }
    
    public void setGen(String gen){
        this.gen = gen;
    }

    public String getApm() {
        return apm;
    }
    
    public void setApm(String apm){
        this.apm = apm;
    }

    public String getApp() {
        return app;
    }
    
    public void setApp(String app){
        this.app = app;
    }
    
    public String getTipo (){
        return tipo;
    }
    
    public void setTipo (String tipo){
        this.tipo = tipo;
    }
    
}
