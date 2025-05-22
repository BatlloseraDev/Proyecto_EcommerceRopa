package com.ejercicio.proyecto_ecommerce.accesoDatos

import com.ejercicio.proyecto_ecommerce.negocio.Vendedor

interface VendedorDAO {

    fun getVendedorByID(id:Int): Vendedor?
}