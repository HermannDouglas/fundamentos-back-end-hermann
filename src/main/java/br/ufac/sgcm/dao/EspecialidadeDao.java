package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Especialidade;

public class EspecialidadeDao implements IDao<Especialidade> {

    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet rs;

    public EspecialidadeDao() {
        conexao = ConexaoDB.getConexao();
    }

    @Override
    public List<Especialidade> get() {
        
        List<Especialidade> registros = new ArrayList<>();
        String sql = "SELECT * FROM especialidade";
        try {
            ps = conexao.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Especialidade registro = new Especialidade();
                registro.setId(rs.getLong("id"));
                registro.setNome(rs.getString("nome"));
                registros.add(registro);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return registros;
    }

    @Override
    public Especialidade get(Long id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int insert() {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int update() {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int delete() {
        // TODO Auto-generated method stub
        return 0;
    }
    
}
