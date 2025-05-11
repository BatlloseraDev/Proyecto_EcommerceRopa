package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.tablas.Administrador

interface AdminDAO {

    fun getAdminByID(id:Int) : Administrador?

}