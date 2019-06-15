package com.springboot.backend.apirest.models.services;

import java.util.List;

import com.springboot.backend.apirest.models.entity.Indice;


public interface IIndiceService {
	
	public List<Indice> findAll();
	public Indice findById(Long id);
	public Indice save(Indice indice);
	public void delete(Long id);
}
