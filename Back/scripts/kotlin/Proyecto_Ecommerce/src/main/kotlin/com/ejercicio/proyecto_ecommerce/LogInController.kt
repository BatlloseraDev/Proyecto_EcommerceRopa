package com.ejercicio.proyecto_ecommerce

import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.control.PasswordField
import javafx.scene.control.TextField
import com.ejercicio.proyecto_ecommerce.accesoDatos.*
import com.ejercicio.proyecto_ecommerce.negocio.Usuario
import com.ejercicio.proyecto_ecommerce.presentacion.AdminController
import com.ejercicio.proyecto_ecommerce.presentacion.ClienteController
import com.ejercicio.proyecto_ecommerce.presentacion.VendedorController
import javafx.fxml.FXMLLoader
import javafx.scene.Parent
import javafx.scene.Scene
import javafx.stage.Stage

class LogInController {

    private val daoUsuario= UsuarioDAOImpl()
    private val daoAdmin= AdminDAOImpl()
    private val daoVendedor= VendedorDAOImpl()
    private val daoCliente= ClienteDAOImpl()



    @FXML
    private lateinit var pwContra: PasswordField

    @FXML
    private lateinit var txtCorreo: TextField

    @FXML
    fun onBtnIniciarSesion(event: ActionEvent) {
        //tratar con la base de datos primero haciendo una busqueda.
        if(!comprobarCampoVacios()){
            val usuario= comprobarCorreo(txtCorreo.text)
            if(usuario != null){
                if(checkContra(pwContra.text,usuario)){
                    println("Las contraseñas coinciden")
                    val tipo=comprobarTipoUsuario(usuario) //esto te devuelve que tipo de usuario es para cargar la ventana
                    //correspondiente.
                    cargarVentanaCorrespondiente(tipo)
                    
                }
                else println("Las contraseñas no coinciden") //sustituir por un alert o algo que avise al usuario
            }else{
                println("Cuenta no existente")//sustituir por un alert o algo que avise al usuario
            }
        }else{
            println("Campos vacios")//sustituir por un alert o algo que avise al usuario
        }

    }

    /*Funciones para iniciar sesion*/

    fun comprobarCampoVacios(): Boolean
    {
        return (txtCorreo.text.isEmpty() || pwContra.text.isEmpty())
    }

    fun comprobarCorreo(correo: String): Usuario?
    {
        return daoUsuario.getUsuarioPorCorreo(correo)
    }
    fun checkContra(contra:String, usuario: Usuario): Boolean{

        return contra== usuario.contrasenia
    }

    fun comprobarTipoUsuario(usuario: Usuario):Int{

        var tipo = 0

        /*realmente esto es ineficiente deberíamos hacer que la clase usuario
        * sea padre y el resto hijos y apartir de ahi controlar las listas
        * correctamente, pero no tenemos tiempo para poder implementar esto.*/

        if(daoCliente.getClientePorID(usuario.id_usuario)!=null) tipo=1
        else if(daoVendedor.getVendedorByID(usuario.id_usuario) != null) tipo=2
        else if(daoAdmin.getAdminByID(usuario.id_usuario) != null) tipo = 3

        return tipo
    }
    fun cargarVentanaCorrespondiente(ventana: Int){
        when(ventana){
            1-> {
                //cargar ventana cliente con los datos del cliente.
                println("ventana cliente")
                try {
                    val loader = FXMLLoader(ClienteController::class.java.getResource("/com/ejercicio/proyecto_ecommerce/Cliente_View.fxml"))
                    val root: Parent = loader.load()
                    val stage = Stage()
                    stage.title = "Cliente"
                    stage.scene = Scene(root)
                    stage.show()
                } catch (e: Exception) {

                    println("El error es ${e.message}")
                    //e.printStackTrace()
                }

            }
            2->{
                //cargar venana vendedor con los datos del vendedor
                println("ventana vendedor")
                try {
                    val loader =
                        FXMLLoader(
                            VendedorController::class.java.getResource
                                ("/com/ejercicio/proyecto_ecommerce/Vendedor_View.fxml")
                        )
                    val root: Parent = loader.load()
                    val stage = Stage()
                    stage.title = "Vendedor"
                    stage.scene = Scene(root)
                    stage.show()
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            }
            3->{
                //cargar ventana administrador con los datos del administrador
                println("ventana administrador")

                try {
                    val loader =
                        FXMLLoader(
                            AdminController::class.java.getResource
                                ("/com/ejercicio/proyecto_ecommerce/Admin_View.fxml")
                        )
                    val root: Parent = loader.load()
                    val stage = Stage()
                    stage.title = "Admin"
                    stage.scene = Scene(root)
                    stage.show()
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            }
            else->{
                println("Error al cargar la ventana")
            }
        }
    }

    @FXML
    fun onBtnRegistrarme(event: ActionEvent) {
        println("ventana administrador")

        try {
            val loader =
                FXMLLoader(
                    AdminController::class.java.getResource
                        ("/com/ejercicio/proyecto_ecommerce/Register_View.fxml")
                )
            val root: Parent = loader.load()
            val stage = Stage()
            stage.title = "Registro"
            stage.scene = Scene(root)
            stage.show()
        } catch (e: Exception) {
            e.printStackTrace()
        }

    }
}