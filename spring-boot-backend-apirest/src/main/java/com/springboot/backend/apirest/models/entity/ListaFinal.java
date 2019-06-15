package com.springboot.backend.apirest.models.entity;

import java.util.ArrayList;

public class ListaFinal {
	private Long idDoc;
	private ArrayList<PalabraLista> lista;
	public ListaFinal(Long idDoc, ArrayList<PalabraLista> lista) {
		this.idDoc = idDoc;
		this.lista = lista;
	}
	public Long getIdDoc() {
		return idDoc;
	}
	public void setIdDoc(Long idDoc) {
		this.idDoc = idDoc;
	}
	public ArrayList<PalabraLista> getLista() {
		return lista;
	}
	public void setLista(ArrayList<PalabraLista> lista) {
		this.lista = lista;
	}
	@Override
	public String toString() {
		return "ListaFinal [idDoc=" + idDoc + ", lista=" + lista.toString() + "]";
	}
	
	
	
}
