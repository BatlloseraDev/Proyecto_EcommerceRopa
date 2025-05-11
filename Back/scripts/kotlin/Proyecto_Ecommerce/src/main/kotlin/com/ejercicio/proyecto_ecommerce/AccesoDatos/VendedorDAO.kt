package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.tablas.Vendedor

interface VendedorDAO {

    fun getVendedorByID(id:Int): Vendedor?
}