
public class Producto {
    
    public static final int CERVEZA=0;
    public static final int TINTO=1;
    public static final int RACION=2;
    public static final int RON=3;
    public static final int GINEBRA=4;
    public static final int WHISKY=5;
    public static final int COCTAIL=6;
    public static final int CHISMAILLO=7;

    //Propiedades de la clase
    String nombre;
    float precio_min;
    float precio_max;
    int tipo;
    float precio_actual;
   
    //Constructor de la clase
    public Producto(String nombre,float min,float max, int tipo){
       this.nombre=nombre;
       this.setPrecio(min,max);
       this.tipo=tipo;
    }

    private void setPrecio(float min, float max) {
        //Metodo para seleccionar el precio del producto
        if (min<0 || max<0){
            //EXCEPTION
        }
    }

    //GETTERS
    
    public String getNombre() {
        return nombre;
    }

    public int getTipo() {
        return tipo;
    }

    public float getPrecio_actual() {
        return precio_actual;
    }

    public float generarNuevoPrecio(){
        
        return 0;
    }
   
 
    
    
    
    
}
