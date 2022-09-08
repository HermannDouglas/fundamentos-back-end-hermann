package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoDB {

    private static ConexaoDB instanciaConexao;
    private Connection conexao;

    private ConexaoDB() {

        String url = "jdbc:mysql://localhost/sgcm";
        String usuario = "root";
        String senha = "root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        try {
            conexao = DriverManager.getConnection(url, usuario, senha);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public static Connection getConexao() {

        if (instanciaConexao == null) {
            instanciaConexao = new ConexaoDB();
        }

        return instanciaConexao.conexao;
        
    }
    
}
