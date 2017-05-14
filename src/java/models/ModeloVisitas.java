/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import classes.Visita;

/**
 *
 * @author adani
 */
public class ModeloVisitas extends Conexion
{
    public ArrayList<Visita> getAllViajes(int idu)
    {
        ArrayList<Visita> visitas = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try
        {
            String sql = "SELECT visitas.id, usuario.usuario, visitas.fecha, visitas.institucion  FROM visitas INNER JOIN usuario on visitas.usuario = usuario.id WHERE visitas.usuario = ?";
            pst = getConnection().prepareCall(sql);
            pst.setInt(1, idu );
            rs = pst.executeQuery();
            while(rs.next())
            {
                visitas.add(new Visita(rs.getInt("id"),rs.getString("usuario"),rs.getDate("fecha").toString(),rs.getString("institucion")));
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
       return visitas;
    }
    public static void main(String Arggs[])
    {
        ModeloVisitas vis = new ModeloVisitas();
              
        for ( Visita vi : vis.getAllViajes(1))
        {
            System.out.println(vi.getId());
            System.out.println(vi.getUsuario());
            System.out.println(vi.getFecha());
            System.out.println(vi.getInstitucion());
        }
    }
}
