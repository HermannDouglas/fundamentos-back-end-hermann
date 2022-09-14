package br.ufac.sgcm.controller;

import java.sql.SQLException;
import java.util.List;

public interface IController<T> {

    List<T> get();
    T get(Long id);
    int save(T objeto) throws SQLException;
    int delete(Long id) throws SQLException;

}
