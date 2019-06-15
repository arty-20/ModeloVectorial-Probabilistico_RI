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

@Entity
@Table(name = "indice")
public class Indice implements Serializable{
	@OnDelete(action=OnDeleteAction.CASCADE)
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID_INDICE")
	private Long idIndice;

	@Column(name = "TEXTO_PALABRA")
	private String palabra;
	
	@Column(name = "N_DOC")
	private Long numeroDoc;
	
	@Column(name = "CANTIDAD")
	private Long cantidad;
	
	

	public Indice() {
	}

	public Long getIdIndice() {
		return idIndice;
	}

	public void setIdIndice(Long idIndice) {
		this.idIndice = idIndice;
	}

	public String getPalabra() {
		return palabra;
	}

	public void setPalabra(String pal) {
		palabra = pal;
	}

	public Long getNumeroDoc() {
		return numeroDoc;
	}

	public void setNumeroDoc(Long numeroDoc) {
		this.numeroDoc = numeroDoc;
	}

	public Long getCantidad() {
		return cantidad;
	}

	public void setCantidad(Long cantidad) {
		this.cantidad = cantidad;
	}
	private static final long serialVersionUID = 1L;
	
}
