package com.ejercicio.proyecto_ecommerce.accesoDatos

import com.ejercicio.proyecto_ecommerce.negocio.Administrador

interface AdminDAO {

    fun getAdminByID(id:Int) : Administrador?

}