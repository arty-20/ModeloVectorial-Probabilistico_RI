package com.springboot.backend.apirest.models.entity;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
public class Trie {
	private ArrayList<Vertice> trie;
    public Trie(){
        trie = new ArrayList();
        trie.add(new Vertice());
    }
    
    public Trie(String cad){
        trie = new ArrayList();
        trie.add(new Vertice());
        cad = Normalizer.normalize(cad, Normalizer.Form.NFD).replaceAll("\\p{InCOmbiningDiacriticalMarks}+", "");
        cad = cad.toLowerCase();
        String[] cadena = cad.split(",");
        for(int i = 0 ; i < cadena.length; i++){
            añadirCadena(cadena[i]);
        }
    }
    
    public void añadirCadena(String cad){
        int v = 0;
        for(int i = 0; i < cad.length(); i++){
            char ch = cad.charAt(i);
            int c = ch - 'a';
            if(trie.get(v).getSiguiente()[c] == -1){
                trie.get(v).getSiguiente()[c] = trie.size();
                if(trie.get(v).isUltimo()){
                    trie.get(v).setUltimo(false);
                }
                trie.add(new Vertice());
            }
            v = trie.get(v).getSiguiente()[c];
        }
        trie.get(v).setHoja(true);
        trie.get(v).setCont(trie.get(v).getCont()+1);
    }
    
//    public void imprimir(String cad, int pos){
//        if(trie.get(pos).isHoja()){
//            System.out.println(cad+" "+trie.get(pos).getCont());
//        }
//        if(!trie.get(pos).isUltimo()){
//            char c = 'a';
//            int[] siguiente = trie.get(pos).getSiguiente();
//            for(int i = 0 ; i < siguiente.length; i++){
//                if(siguiente[i] != -1){
//                    c += i;
//                    imprimir(cad+c,siguiente[i]);
//                    c = 'a';
//                }
//            }
//        }
//    }
    
    public HashMap<String,Integer> getLista(){
        HashMap<String, Integer> res = new HashMap();
        getLista("",0,res);
        return res;
    }

    private HashMap<String,Integer> getLista(String cad, int pos, HashMap<String,Integer> res){
        if(trie.get(pos).isHoja()){
            res.put(cad, trie.get(pos).getCont());
        }
        if(!trie.get(pos).isUltimo()){
            char c = 'a';
            int[] siguiente = trie.get(pos).getSiguiente();
            for(int i = 0 ; i < siguiente.length; i++){
                if(siguiente[i] != -1){
                    c += i;
                    getLista(cad+c,siguiente[i],res);
                    c = 'a';
                }
            }
        }
        return res;
    }
    public ArrayList<Vertice> getTrie() {
        return trie;
    }
    
}

