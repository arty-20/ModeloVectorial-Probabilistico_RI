package com.springboot.backend.apirest.models.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.backend.apirest.models.dao.IDocumentoDao;
import com.springboot.backend.apirest.models.entity.Documento;

@Service
public class DocumentoServiceImpl implements IDocumentoService{

	@Autowired
	private IDocumentoDao doc;
	
	@Override
	@Transactional(readOnly=true)
	public List<Documento> findAll() {
		// TODO Auto-generated method stub
		return (List<Documento>)doc.findAll();
	}

	@Override
	@Transactional(readOnly=true)
	public Documento findById(Long id) {
		// TODO Auto-generated method stub
		return doc.findById(id).orElse(null);
	}

	@Override
	@Transactional()
	public Documento save(Documento documento) {
		// TODO Auto-generated method stub
		return doc.save(documento);
	}

	@Override
	@Transactional()
	public void delete(Long id) {
		// TODO Auto-generated method stub
		doc.deleteById(id);
	}

}
