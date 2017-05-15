/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.sql.*;
import java.sql.Date;

/**
 *
 * @author adani
 */
public class ControladorAgenda extends models.Conexion
{
    public boolean registrar(int usuario, Date fecha, String Escuela )
    {
        PreparedStatement pst = null;
        
        try
        {
           String consulta="INSERT INTO `visitas` (`id`, `usuario`, `fecha`, `institucion`) VALUES (NULL, ?, ?, ?);";
           pst = getConnection().prepareStatement(consulta);
           pst.setInt(1, usuario);
           pst.setDate(2, fecha);
           pst.setString(3, Escuela);
           
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
