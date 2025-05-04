package com.ejercicio.proyecto_ecommerce.tablas

class Usuario(val id_usuario: Int, val nombre_usuario: String, val email: String, val contrasenia: String, val fecha_alta: String) {

    override fun toString(): String {
        return "Usuario[id_usuario=$id_usuario, nombre_usuario='$nombre_usuario',email=$email , contraseña=$contrasenia, fecha alta=$fecha_alta]"
    }


}