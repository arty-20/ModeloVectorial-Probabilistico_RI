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
@Table(name = "palabra")
public class Palabra implements Serializable {
	@OnDelete(action=OnDeleteAction.CASCADE)
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "ID_Palabra")
	private Long idPal;

	@Column(name = "PALABRA" , columnDefinition = "text")
	private String palabra;
	
	public Palabra() {
		
	}
	public Long getIdPal() {
		return idPal;
	}

	public void setIdPal(Long idPal) {
		this.idPal = idPal;
	}

	public String getPalabra() {
		return palabra;
	}

	public void setPalabra(String palabra) {
		this.palabra = palabra;
	}
	
	
}
