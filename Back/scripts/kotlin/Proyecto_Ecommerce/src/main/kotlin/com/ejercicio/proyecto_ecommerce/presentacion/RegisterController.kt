package com.ejercicio.proyecto_ecommerce.presentacion

import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.scene.Node
import javafx.scene.control.PasswordField
import javafx.scene.control.TextField
import javafx.stage.Stage


class RegisterController  {



    @FXML
    private lateinit var pwContra: PasswordField

    @FXML
    private lateinit var txtCorreo: TextField

    @FXML
    private lateinit var txtNombre: TextField

    @FXML
    fun onBtnRegistrarse(event: ActionEvent) {
        println("Aquí se empezaría a realizar el proceso de registro")
    }

    @FXML
    fun onBtnVolver(event: ActionEvent) {
        val nodo = event.source as Node
        val ventana = nodo.scene.window as Stage
        ventana.close()
    }





}