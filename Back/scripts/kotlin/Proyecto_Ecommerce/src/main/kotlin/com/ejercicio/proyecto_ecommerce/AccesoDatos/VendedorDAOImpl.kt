package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.Utilidades.*
import com.ejercicio.proyecto_ecommerce.tablas.Vendedor

class VendedorDAOImpl: VendedorDAO {
    private val conexion = ConexionDB()

    override fun getVendedorByID(id: Int): Vendedor? {
        conexion.conectar()

        val ps=conexion.getPreparedStatement(SQL_Vendedor.SELECT_BY_ID)
        ps?.setInt(1,id)
        val rs= ps?.executeQuery()
        var vendedor: Vendedor?=null
        if(rs?.next() == true){
            vendedor = Vendedor(rs.getInt("id_usuario"),rs.getString("nombre_vendedor"),
                rs.getString("ape1"),rs.getString("ape2"),rs.getString("CIF_NIF"))
        }
        ps?.close()
        conexion.desconectar()
        return vendedor
    }



}