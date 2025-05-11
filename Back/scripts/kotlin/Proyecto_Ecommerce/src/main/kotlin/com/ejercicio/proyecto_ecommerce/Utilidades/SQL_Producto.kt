package com.ejercicio.proyecto_ecommerce.Utilidades

object SQL_Producto {
    const val getNombreDescripcion = "SELECT nombre,descripcion FROM producto"
    const val getProductoByidVendedor = "SELECT nombre,descripcion FROM producto WHERE id_vendedor = ?"
}