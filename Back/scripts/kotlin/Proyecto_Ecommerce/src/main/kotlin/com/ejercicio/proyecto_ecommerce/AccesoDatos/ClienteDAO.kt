package com.ejercicio.proyecto_ecommerce.accesoDatos

import com.ejercicio.proyecto_ecommerce.negocio.Cliente

interface ClienteDAO {

    fun getClientePorID(id:Int): Cliente?

}