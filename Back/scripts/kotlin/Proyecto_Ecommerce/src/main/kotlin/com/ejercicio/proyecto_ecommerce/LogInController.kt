package com.ejercicio.proyecto_ecommerce

import javafx.fxml.FXML
import javafx.scene.control.Label

class LogInController {
    @FXML
    private lateinit var welcomeText: Label

    @FXML
    private fun onHelloButtonClick() {
        welcomeText.text = "Welcome to JavaFX Application!"
    }
}