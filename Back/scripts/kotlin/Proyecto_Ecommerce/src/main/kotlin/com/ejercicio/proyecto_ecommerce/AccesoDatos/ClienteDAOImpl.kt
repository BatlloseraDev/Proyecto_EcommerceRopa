package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.tablas.Cliente
import com.ejercicio.proyecto_ecommerce.Utilidades.*


class ClienteDAOImpl: ClienteDAO {

    private  val conexion = ConexionDB()

    override fun getClientePorID(id: Int): Cliente? {
        conexion.conectar()

        val ps=conexion.getPreparedStatement(SQL_Cliente.SELECT_BY_ID)
        ps?.setInt(1,id)
        val rs= ps?.executeQuery()
        var cliente: Cliente? =null
        if(rs?.next() == true){
            cliente = Cliente(rs.getInt("id_usuario"),rs.getString("nombre"),rs.getString("ape1"),
                rs.getString("ape2"),rs.getString("dni"),rs.getString("direccion"),rs.getString("telefono"),rs.getString("tarjeta"))
        }
        ps?.close()
        conexion.desconectar()
        return cliente
    }


}