package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.tablas.Cliente

interface ClienteDAO {

    fun getClientePorID(id:Int): Cliente?

}