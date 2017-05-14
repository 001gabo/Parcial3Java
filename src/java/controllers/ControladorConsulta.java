/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import classes.Usuario;
import java.security.*;
import java.math.*;
import java.sql.*;


/**
 *
 * @author adani
 */
public class ControladorConsulta extends models.Conexion
{
    
    public Usuario usr = new Usuario();
    
    public int autenticacion(String usuario,String pass)
    {
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    try
    {
        String consulta = "SELECT usuario.usuario,usuario.pass,persona.rol FROM usuario INNER JOIN persona ON usuario.idpersona = persona.id where usuario.usuario = ? and usuario.pass = ? and persona.rol = ?";
        pst = getConnection().prepareStatement(consulta);
        pst.setString(1, usuario);
        pst.setString(2, pass);
        pst.setInt(3, 1 );
        rs = pst.executeQuery();
       
        
        if(rs.absolute(1))
          {
              return 1;
          }
    }
    catch (Exception e)
    {
        System.err.println(e.toString());
    }
    finally
    {
        try
        {
           
        }
        catch(Exception i)
        {
            
        }
    }
    
     try
    {
        String consulta = "SELECT usuario.usuario,usuario.pass,persona.rol FROM usuario INNER JOIN persona ON usuario.idpersona = persona.id where usuario.usuario = ? and usuario.pass = ? and persona.rol = ?";
        pst = getConnection().prepareStatement(consulta);
        pst.setString(1, usuario);
        pst.setString(2, pass);
        pst.setInt(3, 2 );
        rs = pst.executeQuery();
       
        
        if(rs.absolute(1))
          {
              return 2;
          }
    }
    catch (Exception e)
    {
        System.err.println(e.toString());
    }
    finally
    {
        try
        {
            if (getConnection()!= null) getConnection().close();
            if (pst != null) pst.close();
            if (rs != null) rs.close();
        }
        catch(Exception i)
        {
            
        }
    }
    return 0;
    }
    
    public boolean registrar(String Nombres, String Apellidos, String correo, String usuario,String pass, String telefono,String pasaporte)
    {
        PreparedStatement pst = null;
        
        try
        {
           String consulta="INSERT INTO `pasajeros`( `nombres`, `apellidos`, `correo`, `usuario`, `pass`, `telefono`, `pasaporte`, `id_rol`) VALUES (?,?,?,?,?,?,?,?)";
           pst = getConnection().prepareStatement(consulta);
           pst.setString(1, Nombres);
           pst.setString(2, Apellidos);
           pst.setString(3, correo);
           pst.setString(4, usuario);
           pst.setString(5, pass);
           pst.setString(6, telefono);
           pst.setString(7, pasaporte);
           pst.setInt(8, 1);
           
           if(pst.executeUpdate() == 1)
           {
               return true;
           }
           
        }
        catch(Exception e)
        {
        }
        finally
        {
            try
            {    
                if(getConnection() !=null) getConnection().close();
                if(pst != null) getConnection().close();
            }
            catch(Exception e)
            {
                
            }
            
       }
        
        return false;
    }
    
  
            
}
