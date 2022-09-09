package br.ufac.sgcm.controller;

import java.util.List;

import br.ufac.sgcm.dao.ProfissionalDao;
import br.ufac.sgcm.model.Profissional;

public class ProfissionalController implements IController<Profissional> {

    private ProfissionalDao dao;

    public ProfissionalController() {
        dao = new ProfissionalDao();
    }

    @Override
    public List<Profissional> get() {
        return dao.get();
    }

    @Override
    public Profissional get(Long id) {
        return dao.get(id);
    }

    @Override
    public int save(Profissional objeto) {
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
