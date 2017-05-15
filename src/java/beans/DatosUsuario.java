 
package beans;  

public class DatosUsuario {
    private String Apellidos;
    private String Nombres;
    private String Escuela; 
    /**
     * @return the Apellidos
     */
    public String getApellidos() {
        return Apellidos;
    }

    /**
     * @param Apellidos the Apellidos to set
     */
    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    /**
     * @return the Nombres
     */
    public String getNombres() {
        return Nombres;
    }

    /**
     * @param Nombres the Nombres to set
     */
    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    /**
     * @return the Escuela
     */
    public String getEscuela() {
        return Escuela;
    }

    /**
     * @param Escuela the Escuela to set
     */
    public void setEscuela(String Escuela) {
        this.Escuela = Escuela;
    }
    
    
    public String getUsuario(String apellidos, String nombres){
        String usuario;
        usuario=nombres+"."+apellidos;
        return usuario;
    } 
    
  
}
