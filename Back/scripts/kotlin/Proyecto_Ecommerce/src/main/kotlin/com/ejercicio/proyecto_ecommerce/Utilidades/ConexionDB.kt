package com.ejercicio.proyecto_ecommerce.utilidades


import java.sql.*

class ConexionDB {
    val url= "jdbc:mysql://localhost/proyectoecommerce"
    val user= "root"
    val password= ""
    var conn: Connection? = null

    fun conectar(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver")
            conn = DriverManager.getConnection(url, user, password)
        }catch (e: SQLException){
            e.printStackTrace()
        } catch (e:ClassNotFoundException){
            e.printStackTrace()
        }
    }


    fun desconectar(){
        try{
            conn?.close()
        }catch (e: SQLException){
            e.printStackTrace()
        }

    }


    fun getStatement() : Statement?
    {
        return conn?.createStatement()
    }

    fun getPreparedStatement(sql: String): PreparedStatement?
    {
        return conn?.prepareStatement(sql)
    }

}