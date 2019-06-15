package com.springboot.backend.apirest.models.dao;

import org.springframework.data.repository.CrudRepository;

import com.springboot.backend.apirest.models.entity.Palabra;

public interface IPalabraDao extends CrudRepository<Palabra, Long>{

}
