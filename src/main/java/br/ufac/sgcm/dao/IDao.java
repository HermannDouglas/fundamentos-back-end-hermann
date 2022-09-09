package br.ufac.sgcm.dao;

import java.util.List;

public interface IDao<T> {
    List<T> get();
    T get(Long id);
    int insert(T objeto);
    int update(T objeto);
    int delete(Long id);
}
