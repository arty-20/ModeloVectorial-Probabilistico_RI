package com.springboot.backend.apirest.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.springboot.backend.apirest.models.entity.Documento;

public interface IDocumentoDao extends CrudRepository<Documento, Long>{

}
