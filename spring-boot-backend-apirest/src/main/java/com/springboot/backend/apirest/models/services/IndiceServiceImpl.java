package com.springboot.backend.apirest.models.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.backend.apirest.models.dao.IIndiceDao;
import com.springboot.backend.apirest.models.entity.Indice;

@Service
public class IndiceServiceImpl implements IIndiceService{
	
	@Autowired
	private IIndiceDao ind;
	@Override
	@Transactional(readOnly=true)
	public List<Indice> findAll() {
		// TODO Auto-generated method stub
		return (List<Indice>)ind.findAll();
	}

	@Override
	@Transactional(readOnly=true)
	public Indice findById(Long id) {
		// TODO Auto-generated method stub
		return ind.findById(id).orElse(null);
	}

	@Override
	@Transactional()
	public Indice save(Indice indice) {
		// TODO Auto-generated method stub
		return ind.save(indice);
	}

	@Override
	@Transactional()
	public void delete(Long id) {
		// TODO Auto-generated method stub
		ind.deleteById(id);
	}

}
