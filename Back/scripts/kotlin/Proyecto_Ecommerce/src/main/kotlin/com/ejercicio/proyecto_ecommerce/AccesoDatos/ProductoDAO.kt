package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.tablas.Producto
import com.ejercicio.proyecto_ecommerce.tablas.Vendedor

interface ProductoDAO {
    fun getNombreDescripcion(): List<Producto>
    fun getProductoByIdVendedor(vendedor: Vendedor):Producto
}