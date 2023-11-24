/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.addEventListener("load", function () { 
    document.getElementById('btniniciar').addEventListener("click", function () {
        var email = document.getElementById('email').value;
        var pass = document.getElementById('pass').value;
        
        var band = false;
        
        if(email.length > 0 && pass.length > 0) {
            band = true;
        }
        
        if(band){
            document.getElementById('formlogin').submit();
        }else{
            document.getElementById("error").classList.add("mostrar");
        }
    });
}); 

