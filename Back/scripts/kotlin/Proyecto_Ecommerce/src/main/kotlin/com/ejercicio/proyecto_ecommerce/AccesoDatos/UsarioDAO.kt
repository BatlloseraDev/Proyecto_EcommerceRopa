package com.ejercicio.proyecto_ecommerce.accesoDatos

import com.ejercicio.proyecto_ecommerce.negocio.Usuario

interface UsarioDAO {
    fun getUsuarioPorID(id:Int):Usuario?
    fun getUsuarioPorCorreo(correo:String):Usuario?
    fun getUsuarioPorNombreUsuario(nombreUsuario:String):Usuario?
    fun getAllUsuarios(): List<Usuario>
    fun insertUsuario(usuario: Usuario):Boolean
    fun updateUsuario(usuario: Usuario):Boolean
    fun deleteUsuario(id:Int):Boolean

}