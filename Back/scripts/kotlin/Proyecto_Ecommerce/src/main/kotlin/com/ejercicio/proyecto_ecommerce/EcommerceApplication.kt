package com.ejercicio.proyecto_ecommerce

import javafx.application.Application
import javafx.fxml.FXMLLoader
import javafx.scene.Scene
import javafx.stage.Stage

class EcommerceApplication : Application() {
    override fun start(stage: Stage) {
        val fxmlLoader = FXMLLoader(EcommerceApplication::class.java.getResource("LogIn_View.fxml"))
        val scene = Scene(fxmlLoader.load())
        stage.title = "LogIn Ecommerce"
        stage.scene = scene
        stage.show()
    }
}

fun main() {
    Application.launch(EcommerceApplication::class.java)
}