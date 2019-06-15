package com.springboot.backend.apirest.models.entity;

import java.util.Arrays;

public class Vertice {
    private int[] siguiente;
    private boolean hoja;
    private boolean ultimo;
    private int cont;
    public Vertice(){
        siguiente = new int[26];
        hoja = false;
        Arrays.fill(siguiente, 0, siguiente.length, -1);
        ultimo = true;
        cont = 0;
    }

    public int[] getSiguiente() {
        return siguiente;
    }

    public boolean isHoja() {
        return hoja;
    }

    public void setHoja(boolean hoja) {
        this.hoja = hoja;
    }

    public boolean isUltimo() {
        return ultimo;
    }

    public void setUltimo(boolean ultimo) {
        this.ultimo = ultimo;
    }

    public int getCont() {
        return cont;
    }

    public void setCont(int cont) {
        this.cont = cont;
    }
}

