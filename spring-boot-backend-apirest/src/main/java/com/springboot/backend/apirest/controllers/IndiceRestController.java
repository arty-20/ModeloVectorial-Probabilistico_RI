package com.springboot.backend.apirest.controllers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;

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

import com.springboot.backend.apirest.models.entity.Documento;
import com.springboot.backend.apirest.models.entity.Indice;
import com.springboot.backend.apirest.models.entity.ListaFinal;
import com.springboot.backend.apirest.models.entity.Palabra;
import com.springboot.backend.apirest.models.entity.PalabraLista;
import com.springboot.backend.apirest.models.entity.Probabilistico;
import com.springboot.backend.apirest.models.entity.Tokenizador;
import com.springboot.backend.apirest.models.services.IDocumentoService;
import com.springboot.backend.apirest.models.services.IIndiceService;

@CrossOrigin(origins = {"http://localhost:4200"})
@RestController
@RequestMapping("/api")
public class IndiceRestController {
	
	@Autowired
	private IIndiceService ind;
	@Autowired
	private IDocumentoService doc;
	
	
	private ArrayList<Documento> idDocumentos;
	@GetMapping("/indices")
	public List<Documento> index(){
		//return idDocumentos;
		/*idDocumentos = new ArrayList<Documento>();
		Documento d = new Documento();
		d.setTituloDoc("prueba10");
		d.setTextoDoc("alksjdlkahfslhal");
		idDocumentos.add(d);*/
		//System.out.println(idDocumentos.toString());
		/*Stack<Documento> s = new Stack<Documento>();
		for(Documento d1 : idDocumentos)
			s.push(d1);
		idDocumentos = new ArrayList<Documento>();
		while(!s.isEmpty())
			idDocumentos.add(s.pop());
		System.out.println(idDocumentos.toString());*/
		return idDocumentos;
	}
	
	@GetMapping("/indices/{id}")
	public Indice show(@PathVariable Long id){
		return ind.findById(id);
	}
	/*crear*/
	@PostMapping("/indices")
	@ResponseStatus(HttpStatus.CREATED)
	public Indice create(@RequestBody Palabra categoria) {
		 List<ListaFinal> indices;
		 ArrayList<Integer> impor;
		Tokenizador tok = new Tokenizador();
		ArrayList<String> lim = tok.tokenizar(categoria.getPalabra());
		System.out.println(lim.toString());
		indices = transLista(ind.findAll());
		System.out.println("cantidad"+indices.size());
		
		Probabilistico pro = new Probabilistico((ArrayList<ListaFinal>)indices);
		impor = pro.recuperar(lim);
		
		//System.out.println(indices.toString());
		//System.out.println(impor.toString());
		
		
		List<Documento> d =doc.findAll();
		idDocumentos = new ArrayList<Documento>();
		//System.out.println(impor.toString());
		for (Integer num : impor) {
			ListaFinal lf = indices.get(num);
			//System.out.println(lf.toString());
			int x = Integer.parseInt(""+lf.getIdDoc());
			//System.out.println(x);
			Documento y = null;
			for (Documento documento : d) {
				if (documento.getIdDoc().equals(new Long(x))) {
					y = documento;
					//System.out.println("entro");
				}
			}
			//System.out.println(y.toString());
			idDocumentos.add(y);
		}
		
		return null;
	}
	
	@PutMapping("/indices/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public Indice update(@RequestBody Indice categoria, @PathVariable Long id) {
		Indice categoriaActual = ind.findById(id);
		categoriaActual.setNumeroDoc(categoria.getNumeroDoc());
		categoriaActual.setPalabra(categoria.getPalabra());
		categoriaActual.setCantidad(categoria.getCantidad());
		return ind.save(categoriaActual);
	}
	
	@DeleteMapping("/indices/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete(@PathVariable Long id) {
		ind.delete(id);
	}
	 
	private ArrayList<ListaFinal> transLista(List<Indice> indices){
		
		ArrayList<ListaFinal> res1 = new ArrayList<ListaFinal>();
		ArrayList<Long> cant = docs(indices);
		//System.out.println("estoy por aca"+cant.toString());
		
		for (Long long1 : cant) {
			ArrayList<PalabraLista> a= new ArrayList<PalabraLista>();
			for (Indice aux : indices) {
				if(long1.equals(aux.getNumeroDoc())) {
					PalabraLista pl = new PalabraLista(aux.getPalabra(),aux.getCantidad());
					a.add(pl);
				}
			}
			ListaFinal lf = new ListaFinal(long1, a);
			
			res1.add(lf);
		}
		
		return res1;
	}
	private ArrayList<Long> docs(List<Indice> indices){
		/*ArrayList<Long> res = new ArrayList<Long>();
		res.add(new Long(-1));
		for (Indice ind : indices) {
			Long a = new Long(ind.getNumeroDoc());
			
			for (int i = 0; i < res.size(); i++) {
				Long long2 = res.get(i);
				if(!a.equals(long2)) {
					if (long2.equals(new Long(-1))) {
						res.remove(0);
						
					}
					res.add(a);
				}
			}
		}*/
		ArrayList<Long> res = new ArrayList<Long>();
		
		for (Indice ind : indices) {
			Long a = new Long(ind.getNumeroDoc());
			boolean bandera = false;
			if(res.size()==0 || res== null) {
				res.add(a);
			}else {
				for (Long num : res) {
					if(num.equals(a) ) {
						bandera=true;
					}
				}
				if(!bandera) {
					res.add(a);	
				}
			}
			
		}
		return res;
	}
	
}
