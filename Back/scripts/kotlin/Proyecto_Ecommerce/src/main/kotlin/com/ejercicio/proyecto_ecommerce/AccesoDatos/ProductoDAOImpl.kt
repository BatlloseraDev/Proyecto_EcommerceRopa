package com.ejercicio.proyecto_ecommerce.AccesoDatos

import com.ejercicio.proyecto_ecommerce.Utilidades.ConexionDB
import com.ejercicio.proyecto_ecommerce.Utilidades.SQL_Producto
import com.ejercicio.proyecto_ecommerce.Utilidades.SQL_Users
import com.ejercicio.proyecto_ecommerce.tablas.Producto
import com.ejercicio.proyecto_ecommerce.tablas.Usuario
import com.ejercicio.proyecto_ecommerce.tablas.Vendedor

class ProductoDAOImpl:ProductoDAO {
    private val conexion = ConexionDB()


    val productos = mutableListOf<Producto>()


    override fun getNombreDescripcion(): List<Producto> {
        try {
            conexion.conectar()
            val st= conexion.getStatement()
            val rs= st?.executeQuery(SQL_Producto.getNombreDescripcion)

            while(rs?.next() == true){
                val producto = Producto(rs.getInt("id_producto"),rs.getInt("id_vendedor"),rs.getString("nombre"),rs.getString("descripcion"))
                productos.add(producto)
            }
            st?.close()
            conexion.desconectar()

        }catch (e:Exception){}


        return productos
    }

    override fun getProductoByIdVendedor(idVendedor:Int): List<Producto> {
        TODO("Not yet implemented")
    }


}