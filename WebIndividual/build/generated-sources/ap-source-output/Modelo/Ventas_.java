package Modelo;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-11-29T23:27:07")
@StaticMetamodel(Ventas.class)
public class Ventas_ { 

    public static volatile SingularAttribute<Ventas, Date> fecha;
    public static volatile SingularAttribute<Ventas, Float> total;
    public static volatile SingularAttribute<Ventas, Integer> idLibro;
    public static volatile SingularAttribute<Ventas, Integer> noVenta;
    public static volatile SingularAttribute<Ventas, String> usuario;
    public static volatile SingularAttribute<Ventas, Integer> cantidad;

}