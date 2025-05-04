package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.Utilidades.*
import com.ejercicio.proyecto_ecommerce.tablas.*


class UsuarioDAOImpl:UsarioDAO {

    private val conexion = ConexionDB()





    override fun getUsuarioPorID(id: Int): Usuario? {
        conexion.conectar()

        val ps= conexion.getPreparedStatement(SQL_Users.SELECT_BY_ID)
        ps?.setInt(1,id)
        val rs= ps?.executeQuery()
        var usuario: Usuario? =null
        if(rs?.next() == true){
            usuario = Usuario(rs.getInt("id_usuario"),rs.getString("nombre_usuario"),rs.getString("email"),rs.getString("contrasenia"),rs.getString("fecha_alta"))
        }
        ps?.close()
        conexion.desconectar()
        return usuario
    }

    override fun getUsuarioPorCorreo(correo: String): Usuario? {
        conexion.conectar()

        val ps= conexion.getPreparedStatement(SQL_Users.SELECT_BY_CORREO)
        ps?.setString(1,correo.uppercase())
        val rs= ps?.executeQuery()
        var usuario: Usuario? =null
        if(rs?.next() == true){
            usuario =Usuario(rs.getInt("id_usuario"),rs.getString("nombre_usuario"),rs.getString("email"),rs.getString("contrasenia"),rs.getString("fecha_alta"))
        }
        ps?.close()
        conexion.desconectar()
        return usuario
    }

    override fun getUsuarioPorNombreUsuario(nombreUsuario: String): Usuario? {
        conexion.conectar()

        val ps= conexion.getPreparedStatement(SQL_Users.SELECT_BY_NOMBRE_USUARIO)
        ps?.setString(1,nombreUsuario.uppercase())
        val rs= ps?.executeQuery()
        var usuario: Usuario? =null
        if(rs?.next() == true){
            usuario =Usuario(rs.getInt("id_usuario"),rs.getString("nombre_usuario"),rs.getString("email"),rs.getString("contrasenia"),rs.getString("fecha_alta"))
        }
        ps?.close()
        conexion.desconectar()
        return usuario
    }

    override fun getAllUsuarios(): List<Usuario> {
        conexion.conectar()

        val st= conexion.getStatement()
        val rs= st?.executeQuery(SQL_Users.SELECT_ALL)
        val usuarios = mutableListOf<Usuario>()
        while(rs?.next() == true){
            val usuario =Usuario(rs.getInt("id_usuario"),rs.getString("nombre_usuario"),rs.getString("email"),rs.getString("contrasenia"),rs.getString("fecha_alta"))
            usuarios.add(usuario)
        }
        st?.close()
        conexion.desconectar()
        return usuarios
    }

    override fun insertUsuario(usuario: Usuario): Boolean {
        /*Se tiene que hacer haciendo un insert consecutivamente en la tabla de la isa*/
        return false
    }

    override fun updateUsuario(usuario: Usuario): Boolean {
        conexion.conectar()

        val ps= conexion.getPreparedStatement(SQL_Users.UPDATE)
        ps?.setString(1,usuario.nombre_usuario)
        ps?.setString(2,usuario.email)
        ps?.setString(3,usuario.contrasenia)
        ps?.setInt(4,usuario.id_usuario)
        val result= ps?.executeUpdate()
        ps?.close()
        conexion.desconectar()
        return result == 1
    }

    override fun deleteUsuario(id: Int): Boolean {
        /*Se tiene que hacer con un delete consecutivo en la tabla de la isa*/
        return false
    }


}