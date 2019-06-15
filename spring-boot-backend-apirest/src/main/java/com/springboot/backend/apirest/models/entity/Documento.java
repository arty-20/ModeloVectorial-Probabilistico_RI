package com.springboot.backend.apirest.models.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity // marcamos para identificar q es una clase entity de jpa
@Table(name = "documentos")
public class Documento implements Serializable{
	@OnDelete(action=OnDeleteAction.CASCADE)
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID_DOC")
	private Long idDoc;

	@Column(name = "TITULO_DOC")
	private String tituloDoc;
	
	@Column(name = "TEXTO_DOC", columnDefinition = "text")
	private String textoDoc;
	
	public Documento() {
		
	}
	public Long getIdDoc() {
		return idDoc;
	}

	public void setIdDoc(Long idDoc) {
		this.idDoc = idDoc;
	}

	public String getTituloDoc() {
		return tituloDoc;
	}

	public void setTituloDoc(String tituloDoc) {
		this.tituloDoc = tituloDoc;
	}

	public String getTextoDoc() {
		return textoDoc;
	}

	public void setTextoDoc(String textoDoc) {
		this.textoDoc = textoDoc;
	}
	
	@Override
	public String toString() {
		return "Documento [idDoc=" + idDoc + ", tituloDoc=" + tituloDoc+"]";
	}

	private static final long serialVersionUID = 1L;
	
}
