package com.springboot.backend.apirest.models.entity;

public class PalabraLista {
	private String pal;
	private Long repeticiones;
	public PalabraLista(String pal, Long repeticiones) {
		this.pal = pal;
		this.repeticiones = repeticiones;
	}
	public String getPal() {
		return pal;
	}
	public void setPal(String pal) {
		this.pal = pal;
	}
	public Long getRepeticiones() {
		return repeticiones;
	}
	public void setRepeticiones(Long repeticiones) {
		this.repeticiones = repeticiones;
	}
	
	
	
}
