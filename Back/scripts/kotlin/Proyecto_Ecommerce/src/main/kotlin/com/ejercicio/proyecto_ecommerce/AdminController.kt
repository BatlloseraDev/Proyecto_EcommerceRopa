package com.ejercicio.proyecto_ecommerce

import com.ejercicio.proyecto_ecommerce.AccesoDatos.UsuarioDAOImpl
import com.ejercicio.proyecto_ecommerce.tablas.Usuario
import javafx.application.Platform
import javafx.collections.FXCollections
import javafx.event.ActionEvent
import javafx.fxml.FXML
import javafx.fxml.Initializable
import javafx.scene.Node
import javafx.scene.control.ComboBox
import javafx.scene.control.Label
import javafx.scene.control.TextField
import javafx.stage.Stage
import java.net.URL
import java.util.*

class AdminController : Initializable {

    @FXML
    private lateinit var usuariosComboBox: ComboBox<Usuario>

    @FXML
    private lateinit var usuarioSeleccionadoTextField: TextField

    @FXML
    private lateinit var fechaLabel: TextField



    private val usuarioDAO = UsuarioDAOImpl()

    override fun initialize(location: URL?, resources: ResourceBundle?) {
        cargarUsuarios()

        usuariosComboBox.setOnAction {
            val usuarioSeleccionado = usuariosComboBox.selectionModel.selectedItem
            if(usuarioSeleccionado!=null){
                usuarioSeleccionadoTextField.text = usuarioSeleccionado.email
                fechaLabel.text = usuarioSeleccionado.fecha_alta

            }
        }
    }

    private fun cargarUsuarios() {
        try {
            val listaUsuarios = usuarioDAO.getAllUsuarios()
            val usuariosObservableList = FXCollections.observableList(listaUsuarios)
            usuariosComboBox.items = usuariosObservableList
        } catch (e: Exception) {
            e.printStackTrace()
            println("Error al cargar los usuarios: ${e.message}")
        }
    }

    @FXML
    fun onSalirPressed(event: ActionEvent) {
        val nodo = event.source as Node
        val ventana = nodo.scene.window as Stage
        ventana.close()
    }
}
