package com.ejercicio.proyecto_ecommerce.utilidades

object SQL_Producto {
    const val getNombreDescripcion = "SELECT * FROM producto"
    const val getProductosByidVendedor = "SELECT * FROM producto WHERE id_vendedor = ?"
}