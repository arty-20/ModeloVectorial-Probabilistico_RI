package com.springboot.backend.apirest.models.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.backend.apirest.models.dao.IPalabraDao;
import com.springboot.backend.apirest.models.entity.Palabra;

@Service
public class PalabraServiceImpl implements IPalabraService{
	@Autowired
	private IPalabraDao pal;
	
	@Override
	@Transactional(readOnly=true)
	public List<Palabra> findAll() {
		// TODO Auto-generated method stub
		return (List<Palabra>)pal.findAll();
	}

	@Override
	@Transactional(readOnly=true)
	public Palabra findById(Long id) {
		// TODO Auto-generated method stub
		return pal.findById(id).orElse(null);
	}

	@Override
	@Transactional()
	public Palabra save(Palabra indice) {
		// TODO Auto-generated method stub
		return pal.save(indice);
	}

	@Override
	@Transactional()
	public void delete(Long id) {
		// TODO Auto-generated method stub
		pal.deleteById(id);
	}

}
