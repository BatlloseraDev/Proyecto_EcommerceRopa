package com.ejercicio.proyecto_ecommerce.tablas

class Administrador(val id_usuario: Int, val nombre_admin:String, val dni:String) {

    override fun toString(): String {
        return "Administrador[id: $id_usuario, nombre: $nombre_admin, dni: $dni]"
    }

}