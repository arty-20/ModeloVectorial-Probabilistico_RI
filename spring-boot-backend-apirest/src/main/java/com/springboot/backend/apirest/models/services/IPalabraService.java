package com.springboot.backend.apirest.models.services;

import java.util.List;

import com.springboot.backend.apirest.models.entity.Palabra;

public interface IPalabraService {
	public List<Palabra> findAll();
	public Palabra findById(Long id);
	public Palabra save(Palabra indice);
	public void delete(Long id);
}
