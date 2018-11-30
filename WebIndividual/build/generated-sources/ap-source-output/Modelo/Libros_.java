package Modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-11-29T23:27:07")
@StaticMetamodel(Libros.class)
public class Libros_ { 

    public static volatile SingularAttribute<Libros, String> editorial;
    public static volatile SingularAttribute<Libros, String> descripcion;
    public static volatile SingularAttribute<Libros, Integer> existencia;
    public static volatile SingularAttribute<Libros, Integer> idLibro;
    public static volatile SingularAttribute<Libros, Float> costo;
    public static volatile SingularAttribute<Libros, Long> isbn;
    public static volatile SingularAttribute<Libros, String> genero;
    public static volatile SingularAttribute<Libros, String> titulo;
    public static volatile SingularAttribute<Libros, String> autor;
    public static volatile SingularAttribute<Libros, Long> año;
    public static volatile SingularAttribute<Libros, Boolean> activo;

}