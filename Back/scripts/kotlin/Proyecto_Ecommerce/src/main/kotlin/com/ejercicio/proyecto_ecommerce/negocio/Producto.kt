package com.ejercicio.proyecto_ecommerce.negocio

data class Producto(val id_producto:Int,val id_vendedor:Int,val nombre:String,val descripcion:String){
    override fun toString(): String {
        return "Producto(nombre='$nombre', descripcion='$descripcion')"
    }
}
