package com.ejercicio.proyecto_ecommerce.Utilidades

object SQL_Users {

    const val SELECT_ALL = "SELECT * FROM usuario"
    const val SELECT_BY_CORREO = "SELECT * FROM usuario WHERE upper(email) like ? "
    const val SELECT_BY_ID = "SELECT * FROM usuario WHERE id_usuario = ?"
    const val SELECT_BY_NOMBRE_USUARIO= "SELECT * FROM usuario WHERE upper(nombre_usuario) like ?"
    const val INSERT = "INSERT INTO usuario (nombre_usuario, email, contrasenia, fecha_alta) VALUES (?,?,?,?)"
    const val UPDATE = "UPDATE usuario SET nombre_usuario = ?, email = ?, contrasenia = ? WHERE id_usuario= ?"
    const val DELETE = "DELETE FROM usuario WHERE id_usuario = ?"

}