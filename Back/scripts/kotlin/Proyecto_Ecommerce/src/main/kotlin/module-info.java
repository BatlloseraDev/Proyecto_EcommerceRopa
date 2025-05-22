module com.ejercicio.proyecto_ecommerce {
    requires javafx.controls;
    requires javafx.fxml;
    requires kotlin.stdlib;
    requires java.sql;


    opens com.ejercicio.proyecto_ecommerce to javafx.fxml;
    exports com.ejercicio.proyecto_ecommerce;

    opens com.ejercicio.proyecto_ecommerce.presentacion to javafx.fxml;
    exports com.ejercicio.proyecto_ecommerce.presentacion to javafx.fxml;



}