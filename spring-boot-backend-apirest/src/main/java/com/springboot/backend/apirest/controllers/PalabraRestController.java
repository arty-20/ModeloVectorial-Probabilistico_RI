package com.springboot.backend.apirest.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.backend.apirest.models.entity.Indice;
import com.springboot.backend.apirest.models.entity.Palabra;
import com.springboot.backend.apirest.models.services.IIndiceService;
import com.springboot.backend.apirest.models.services.IPalabraService;

@CrossOrigin(origins = {"http://localhost:4200"})
@RestController
@RequestMapping("/api")
public class PalabraRestController {
	@Autowired
	private IPalabraService docu;
	@Autowired
	private IIndiceService pruebaIndice;
	
	
	@GetMapping("/palabrasIndice")
	public List<Indice> index(){
		return pruebaIndice.findAll();
	}
	
	@GetMapping("/palabras/{id}")
	public Palabra show(@PathVariable Long id){
		return docu.findById(id);
	}
	//crear
	@PostMapping("/palabras")
	@ResponseStatus(HttpStatus.CREATED)
	public Palabra create(@RequestBody Palabra categoria) {
		return docu.save(categoria);
	}
	
	@PutMapping("/palabras/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public Palabra update(@RequestBody Palabra categoria, @PathVariable Long id) {
		Palabra categoriaActual = docu.findById(id);
		categoriaActual.setPalabra(categoria.getPalabra());;
		
		return docu.save(categoriaActual);
	}
	
	@DeleteMapping("/palabras/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete(@PathVariable Long id) {
		docu.delete(id);
	}
}
