package br.ufac.sgcm.controller;

import java.util.List;

import br.ufac.sgcm.dao.EspecialidadeDao;
import br.ufac.sgcm.model.Especialidade;

public class EspecialidadeController implements IController<Especialidade> {

    private EspecialidadeDao dao;

    public EspecialidadeController() {
        dao = new EspecialidadeDao();
    }

    @Override
    public List<Especialidade> get() {
        return dao.get();
    }

    @Override
    public Especialidade get(Long id) {
        return dao.get(id);
    }

    @Override
    public int save(Especialidade objeto) {
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
