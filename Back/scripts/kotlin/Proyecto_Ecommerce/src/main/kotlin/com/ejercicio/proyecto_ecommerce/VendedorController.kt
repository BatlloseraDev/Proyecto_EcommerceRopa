package com.ejercicio.proyecto_ecommerce

import com.ejercicio.proyecto_ecommerce.AccesoDatos.ProductoDAOImpl
import com.ejercicio.proyecto_ecommerce.tablas.Producto
import javafx.application.Platform
import javafx.collections.FXCollections
import javafx.fxml.FXML
import javafx.fxml.Initializable
import javafx.scene.control.ComboBox
import javafx.scene.control.TextField
import java.net.URL
import java.util.*

class VendedorController:Initializable {

    @FXML
    private lateinit var productosComboBox: ComboBox<Producto>

    @FXML
    private lateinit var productoSeleccionadoTextField: TextField

    private val productoDAO = ProductoDAOImpl()

    override fun initialize(p0: URL?, p1: ResourceBundle?) {
        cargarProductos()

        productosComboBox.setOnAction {
            val productoSeleccionado = productosComboBox.selectionModel.selectedItem
            productoSeleccionado?.let {
                productoSeleccionadoTextField.text = it.nombre
            }
        }
    }

    private fun cargarProductos() {
        try {
            val listaProductos = productoDAO.getNombreDescripcion()
            val productosObservableList = FXCollections.observableList(listaProductos)
            productosComboBox.items = productosObservableList
        } catch (e: Exception) {
            e.printStackTrace()
            println("Error al cargar los productos: ${e.message}")
        }
    }

    @FXML
    private fun comprarProducto() {
        val producto = productosComboBox.selectionModel.selectedItem
        producto?.let {
            println("Comprando el producto: ${it.nombre}")

        }
    }

    @FXML
    private fun salir() {

        println("Saliendo de la aplicación.")
        Platform.exit()
    }
}