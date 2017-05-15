/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import classes.Visita;
import models.ModeloVisitas;

/**
 *
 * @author adani
 */
public class ControladorVisita 
{
     public String getVisitas(int iden)
    {
        String htmlcode = "";
        ModeloVisitas vis = new ModeloVisitas();         
        for ( Visita vi : vis.getAllViajes(iden))
        {
            htmlcode += "<div class=\"col-sm-4\">\n" +
"							<div class=\"product-image-wrapper\">\n" +
"								<div class=\"single-products\">\n" +
"									<div class=\"productinfo text-center\">\n" +
"										<img src=\"images/escuela.jpg\" alt=\"\" />\n" +
"										<h2>"+vi.getInstitucion()+"</h2>\n" +
"										<p>"+vi.getFecha()+"</p>\n" +
"									</div>\n" +
"									<div class=\"product-overlay\">\n" +
"										<div class=\"overlay-content\">\n" +
"											<h2>"+vi.getInstitucion()+"</h2>\n" +
"                                                                                       <p>Fecha: "+vi.getFecha()+"</p>\n" +                    
"                                                                                       <p>Asignado a: "+vi.getUsuario()+"</p>\n" +
"										</div>\n" +
"									</div>\n" +
"								</div>\n" +
"								<div class=\"choose\">\n" +
"									<ul class=\"nav nav-pills nav-justified\">\n" +
"									</ul>\n" +
"								</div>\n" +
"							</div>\n" +
"						</div>		";
        }
        return htmlcode;
    }   
}
