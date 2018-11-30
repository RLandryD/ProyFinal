/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author win 10
 */
@Entity
@Table(name = "reportes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Reportes.findAll", query = "SELECT r FROM Reportes r")
    , @NamedQuery(name = "Reportes.findByMes", query = "SELECT r FROM Reportes r WHERE r.mes = :mes")
    , @NamedQuery(name = "Reportes.findByLibro", query = "SELECT r FROM Reportes r WHERE r.libro = :libro")
    , @NamedQuery(name = "Reportes.findByCantidad", query = "SELECT r FROM Reportes r WHERE r.cantidad = :cantidad")})
public class Reportes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "mes")
    private Integer mes;
    @Basic(optional = false)
    @Column(name = "Libro")
    private String libro;
    @Basic(optional = false)
    @Column(name = "cantidad")
    private int cantidad;

    public Reportes() {
    }

    public Reportes(Integer mes) {
        this.mes = mes;
    }
    
    public Reportes(Integer mes, String tit) {
        this.mes = mes;
        this.libro = tit;
    }

    public Reportes(Integer mes, String libro, int cantidad) {
        this.mes = mes;
        this.libro = libro;
        this.cantidad = cantidad;
    }

    public Integer getMes() {
        return mes;
    }

    public void setMes(Integer mes) {
        this.mes = mes;
    }

    public String getLibro() {
        return libro;
    }

    public void setLibro(String libro) {
        this.libro = libro;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mes != null ? mes.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reportes)) {
            return false;
        }
        Reportes other = (Reportes) object;
        if ((this.mes == null && other.mes != null) || (this.mes != null && !this.mes.equals(other.mes))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Reportes[ mes=" + mes + " ]";
    }
    
}
