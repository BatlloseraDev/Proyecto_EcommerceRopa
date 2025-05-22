package com.ejercicio.proyecto_ecommerce.negocio

class Vendedor(val id_usuario: Int, val nombre_vendedor:String,val ape1:String, val ape2:String?, val CIF_NIF:String){


    override fun toString(): String {
        return "Vendedor[id: $id_usuario, nombre: $nombre_vendedor $ape1 ${if(ape2 == null) "" else "$ape2"}, CIF/NIF: $CIF_NIF]"
    }
}