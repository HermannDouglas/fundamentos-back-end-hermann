package br.ufac.sgcm.dao;

import java.util.List;

public interface IDao<T> {
    List<T> get();
    T get(Long id);
    int insert();
    int update();
    int delete();
}
