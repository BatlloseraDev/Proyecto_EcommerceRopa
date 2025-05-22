package com.ejercicio.proyecto_ecommerce.accesoDatos

import com.ejercicio.proyecto_ecommerce.negocio.Producto

interface ProductoDAO {
    fun getNombreDescripcion(): List<Producto>
    fun getProductoByIdVendedor(idVendedor:Int):List<Producto>
}