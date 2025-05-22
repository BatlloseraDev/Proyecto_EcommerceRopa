package com.ejercicio.proyecto_ecommerce.negocio

class Cliente(val id_usuario: Int, val nombreCliente:String, val ape1:String, val ape2:String?,val dni:String, val direccion:String, val telefono:String,val tarjeta: String ) {

    override fun toString(): String {
        return "Cliente[id_usuario=$id_usuario, nombre=$nombreCliente $ape1 ${if(ape2 ==null)"" else "$ape2"}, dni: $dni" +
                ", direccion: $direccion, telefono: $telefono, tarjeta: $tarjeta"
    }

}