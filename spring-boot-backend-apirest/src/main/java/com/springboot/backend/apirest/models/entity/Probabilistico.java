package com.springboot.backend.apirest.models.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import java.util.TreeMap;

public class Probabilistico {
	private ArrayList<ListaFinal> documentos; 
    private HashMap<String,Double[]> pesos;
    public Probabilistico(ArrayList<ListaFinal> doc){
        documentos = doc;
        pesos = new HashMap();
        calcularPesos();
    }
 
    private void calcularPesos() {
        for(int i = 0; i < documentos.size(); i++){
            ArrayList<PalabraLista> doc = documentos.get(i).getLista();
            if(doc != null){
                for(PalabraLista palabra : doc){
                    if(!pesos.containsKey(palabra.getPal())){
                        Double[] nuevo = new Double[documentos.size()];
                        for(int j = 0; j < documentos.size(); j++){
                            nuevo[j] = 0.0;
                        }
                        pesos.put(palabra.getPal(), nuevo);
                    }
                    pesos.get(palabra.getPal())[i] = (double)palabra.getRepeticiones();
                }
            }
        }
        ArrayList<String> palabras = new ArrayList(pesos.keySet());
        for(String palabra : palabras){
            double dfi = 0;
            Double[] fri = pesos.get(palabra);
            for(int j = 0; j < fri.length; j++){
                if(fri[j] != 0){
                    dfi++;
                }
            }
            double idf = Math.log10(documentos.size()/dfi);
            for(int j = 0; j < fri.length; j++){
                pesos.get(palabra)[j] = fri[j]*idf;
                //System.out.println(pesos.get(palabra)[j] + "peso");
            }
        }
    }
    
    public ArrayList<Integer> recuperar(ArrayList<String> consulta){
        HashMap<String,Double> pesosConsulta = new HashMap();
        for(String palabra : consulta){
            if(pesos.containsKey(palabra)){  
                if(!pesosConsulta.containsKey(palabra)){
                    pesosConsulta.put(palabra, 0.0);
                }
            }
        }
        ArrayList<String> palabras = new ArrayList(pesosConsulta.keySet());
        for(String palabra : palabras){
            double ni = 0;
            Double[] fri = pesos.get(palabra);
            for(int j = 0; j < fri.length; j++){
                if(fri[j] != 0){
                    ni++;
                }
            }
            double peso = 0;
            if(ni != 0)
                peso = Math.log10((1.0-(ni/documentos.size()))/(ni/documentos.size()));
            pesosConsulta.put(palabra,peso);
        }
        TreeMap<Double,ArrayList<Integer>> res = new TreeMap();
        for(int i = 0; i < documentos.size(); i++){
            Double similaridad = 0.0;
            for(String palabra : palabras){
                Double[] pesosDoc = pesos.get(palabra);
                similaridad = similaridad + (pesosDoc[i]*pesosConsulta.get(palabra));
            }
            if(res.containsKey(similaridad)){
                res.get(similaridad).add(i);
            }else{
                ArrayList<Integer> nuevo = new ArrayList();
                nuevo.add(i);
                res.put(similaridad,nuevo);
            }
        }
        ArrayList<Double> similaridades = new ArrayList(res.keySet());
        System.out.println("similaridades"+similaridades.toString());
        Stack<Integer> respuesta = new Stack();
        for(int i = 0; i < similaridades.size(); i++){
            ArrayList<Integer> docs = res.get(similaridades.get(i));
            for(Integer n : docs){
                respuesta.push(n);
            }
        }
        ArrayList<Integer> r = new ArrayList();
        while(!respuesta.empty()){
            r.add(respuesta.pop());
        }
        return r;
    }
}
