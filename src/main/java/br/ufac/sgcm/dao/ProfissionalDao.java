package br.ufac.sgcm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.ufac.sgcm.model.Profissional;

public class ProfissionalDao implements IDao<Profissional> {

    private Connection conexao;
    private PreparedStatement ps;
    private ResultSet rs;
    private EspecialidadeDao especialidadeDao;
    private UnidadeDao unidadeDao;

    public ProfissionalDao() {
        conexao = ConexaoDB.getConexao();
        especialidadeDao = new EspecialidadeDao();
        unidadeDao = new UnidadeDao();
    }



    @Override
    public List<Profissional> get() {
        
        List<Profissional> registros = new ArrayList<>();
        String sql = "SELECT * FROM profissional";
        try {
            ps = conexao.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Profissional registro = new Profissional();
                registro.setId(rs.getLong("id"));
                registro.setNome(rs.getString("nome"));
                registro.setRegistroConselho(rs.getString("registro_conselho"));
                registro.setTelefone(rs.getString("telefone"));
                registro.setEmail(rs.getString("email"));
                registro.setEspecialidade(especialidadeDao.get(rs.getLong("especialidade_id")));
                registro.setUnidade(unidadeDao.get(rs.getLong("unidade_id")));
                registros.add(registro);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return registros;
    }

    @Override
    public Profissional get(Long id) {
        Profissional registro = new Profissional();
        String sql = "SELECT * FROM profissional WHERE id = ?";
        try {
            ps = conexao.prepareStatement(sql);
            ps.setLong(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                registro.setId(rs.getLong("id"));
                registro.setNome(rs.getString("nome"));
                registro.setRegistroConselho(rs.getString("registro_conselho"));
                registro.setTelefone(rs.getString("telefone"));
                registro.setEmail(rs.getString("email"));
                registro.setEspecialidade(especialidadeDao.get(rs.getLong("especialidade_id")));
                registro.setUnidade(unidadeDao.get(rs.getLong("unidade_id")));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return registro;
    }

    @Override
    public int insert(Profissional objeto) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int update(Profissional objeto) {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public int delete(Long id) {
        int registrosAfetados = 0;
        String sql = "DELETE FROM profissional WHERE id = ?";
        try {
            ps = conexao.prepareStatement(sql);
            ps.setLong(1, id);
            registrosAfetados = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return 0;
    }
    
}
