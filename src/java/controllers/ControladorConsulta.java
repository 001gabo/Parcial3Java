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
    public int autenticacion(String usuario,String pass)
    {
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    try
    {
        String consulta = "SELECT usuario.usuario,usuario.pass,persona.rol FROM usuario INNER JOIN persona ON usuario.idpersona = persona.id where usuario.usuario = ? and usuario.pass = ? and persona.rol = ?";
        pst = getConnection().prepareStatement(consulta);
        pst.setString(1,usuario);
        pst.setString(2,pass);
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
}