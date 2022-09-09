package br.ufac.sgcm.controller;

import java.util.List;

import br.ufac.sgcm.dao.UnidadeDao;
import br.ufac.sgcm.model.Unidade;

public class UnidadeController implements IController<Unidade> {

    private UnidadeDao dao;

    public UnidadeController() {
        dao = new UnidadeDao();
    }

    @Override
    public List<Unidade> get() {
        return dao.get();
    }

    @Override
    public Unidade get(Long id) {
        return dao.get(id);
    }

    @Override
    public int save(Unidade objeto) {
        int registrosAfetados = 0;
        if (objeto.getId() == null) {
            registrosAfetados = dao.insert(objeto);
        } else {
            registrosAfetados = dao.update(objeto);
        }
        return registrosAfetados;
    }

    @Override
    public int delete(Long id) {
        return dao.delete(id);
    }
    
}
