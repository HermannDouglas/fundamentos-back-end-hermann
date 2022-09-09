package br.ufac.sgcm.controller;

import java.util.List;

public interface IController<T> {

    List<T> get();
    T get(Long id);
    int save(T objeto);
    int delete(Long id);

}
