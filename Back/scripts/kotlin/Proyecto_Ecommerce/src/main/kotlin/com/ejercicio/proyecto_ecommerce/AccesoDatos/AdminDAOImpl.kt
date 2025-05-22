package com.ejercicio.proyecto_ecommerce.accesoDatos

import com.ejercicio.proyecto_ecommerce.negocio.Administrador
import com.ejercicio.proyecto_ecommerce.utilidades.*


class AdminDAOImpl:AdminDAO {

    private val conexion = ConexionDB()

    override fun getAdminByID(id: Int): Administrador? {
        conexion.conectar()

        val ps=conexion.getPreparedStatement(SQL_Admin.SELECT_BY_ID)
        ps?.setInt(1,id)
        val rs= ps?.executeQuery()
        var administrador: Administrador?=null
        if(rs?.next() == true){
            administrador = Administrador(rs.getInt("id_usuario"),rs.getString("nombre_admin"),rs.getString("dni"))
        }
        ps?.close()
        conexion.desconectar()
        return administrador
    }
}