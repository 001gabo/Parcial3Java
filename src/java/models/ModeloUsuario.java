/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author adani
 */
public class ModeloUsuario extends Conexion
{
    public Usuario getUsuario(String idu)
    {
        Usuario us = new Usuario();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try
        {
            String sql = "select * from usuario where usuario = ? ";
            pst = getConnection().prepareCall(sql);
            pst.setString(1, idu );
            rs = pst.executeQuery();
            rs.next();
            {
                us = new Usuario(rs.getInt("id"),rs.getString("usuario"),rs.getString("pass"));
            }
        
        }
        catch(Exception e)
        {
            
        }
        finally
        {
            try
            {
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(getConnection() != null) getConnection().close();
                
            }
            catch(Exception e)
            {}
       }
        return us;
        
    }
    
}
