/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author adani
 */
public class Visita 
{

    private int Id;
    private String Usuario;
    private String Fecha;
    private String Institucion;
    
    public Visita(int id, String Usuario, String Fecha,  String Institucion)
    {
        this.Id = id;
        this.Usuario = Usuario;
        this.Fecha = Fecha;
        this.Institucion = Institucion;
                
    }
    
    public Visita()
    {}
    /**
     * @return the Id
     */
    public int getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(int Id) {
        this.Id = Id;
    }

    /**
     * @return the Usuario
     */
    public String getUsuario() {
        return Usuario;
    }

    /**
     * @param Usuario the Usuario to set
     */
    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    /**
     * @return the Fecha
     */
    public String getFecha() {
        return Fecha;
    }

    /**
     * @param Fecha the Fecha to set
     */
    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }

    /**
     * @return the Institucion
     */
    public String getInstitucion() {
        return Institucion;
    }

    /**
     * @param Institucion the Institucion to set
     */
    public void setInstitucion(String Institucion) {
        this.Institucion = Institucion;
    }
    
    
}
