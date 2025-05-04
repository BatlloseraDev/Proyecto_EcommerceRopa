module com.ejercicio.proyecto_ecommerce {
    requires javafx.controls;
    requires javafx.fxml;
    requires kotlin.stdlib;


    opens com.ejercicio.proyecto_ecommerce to javafx.fxml;
    exports com.ejercicio.proyecto_ecommerce;
}