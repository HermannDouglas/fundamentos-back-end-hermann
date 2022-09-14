package br.ufac.sgcm.dao;

import java.sql.SQLException;
import java.util.List;

public interface IDao<T> {

    List<T> get();
    T get(Long id);
    int insert(T objeto) throws SQLException;
    int update(T objeto) throws SQLException;
    int delete(Long id) throws SQLException;

}
