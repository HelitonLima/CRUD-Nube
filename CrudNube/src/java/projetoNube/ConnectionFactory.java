//
//   Document   : ConnectionFactory
//   Created on : 25/09/2020
//   Author     : Heliton Lima
//

package projetoNube;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    
    public Connection conexao(){
        System.out.println("Conectando");
        try {
            Class.forName(DRIVER);
           return
            DriverManager.getConnection("jdbc:mysql://localhost/projetoNube","root","");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static void main(String[] args) {
        new ConnectionFactory().conexao();
        System.out.println("Conectado");
    }
}
