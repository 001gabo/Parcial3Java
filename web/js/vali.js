/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
window.addEventListener('load',function(){
     alert('Bienvenido: Inicia sesion antes de ingresar');

    document.getElementById('btniniciar').addEventListener('click',function (){
        var nombre = document.getElementById('txtusuario').value;
        var contrasena = document.getElementById('txtpass').value;
        
        var bandera = false;
        
        if(nombre.length > 0 && contrasena.length > 0)
        {
            bandera = true;
        }
        
        if(bandera)
        {
            document.getElementById('forminicio').submit();
        }
        else
        {
            alert('Llene los campos');
        }
    })
})


