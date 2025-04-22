

document.addEventListener("DOMContentLoaded", function(){

    document.getElementById("login-form").addEventListener("submit", function(event){
        event.preventDefault();

        let email= document.getElementById("email").value;
        let password = document.getElementById("password").value;

        const userDataAdmin = {
            email: "admin@admin.com", /*de momento como testeo*/
            password: "admin"
        };
        const userDataVendedor = {
            email: "vendedor@vendedor.com", /*de momento como testeo*/
            password: "vendedor"
        };
        const userDataUser = {
            email: "user@user.com", /*de momento como testeo*/
            password: "user"
        };

        if(email === userDataAdmin.email && password === userDataAdmin.password){
            window.location.href="html/interfazAdmin.html";
        }
        else if(email === userDataVendedor.email && password === userDataVendedor.password){
            window.location.href="html/vendedor.html";
        }
        else if(email === userDataUser.email && password === userDataUser.password){
            window.location.href="html/cliente.html";
        }
        else{
            document.getElementById("error-message").style.display = "block"; 
        }


    });


});