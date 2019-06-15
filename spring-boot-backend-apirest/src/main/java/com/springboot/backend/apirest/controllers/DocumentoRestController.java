package com.springboot.backend.apirest.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

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
import com.springboot.backend.apirest.models.entity.Palabra;
import com.springboot.backend.apirest.models.entity.Trie;
import com.springboot.backend.apirest.models.entity.Vertice;
import com.springboot.backend.apirest.models.services.IDocumentoService;
import com.springboot.backend.apirest.models.services.IIndiceService;
import com.springboot.backend.apirest.models.services.IPalabraService;


@CrossOrigin(origins = {"http://localhost:4200"})
@RestController
@RequestMapping("/api")
public class DocumentoRestController {
	private Trie palabrasVacias =new Trie("si,bien,esta,de,o,el,es,para,y,muy,la,más,tal,que,en,incluso,cuando,se,está,a,las,hay,tambien,éstas,los,están,varios,al,mismo,como,esto,común,un,después,tras,breve,sus,Esto,entre,por,una,El,del,con,lo,da,Es,En,algunos,parte,sin,embargo,ser,generalmente,ya,son,Se,pero,no,gran,les,tanto,así,La,crea,tales,acuerdo,caso,misma,este,estos,estas,tampoco,Una,uno,unas,unos,algunas,aquel,aqulla,aquella,aquellos,aquellas,Pero,él,le,vez,ves,cual,adelante,ademas,además,adrede,ahi,ahí,ahora,alli,allí,alrededor,ante,antes,apenas,aproximadamente,aquél,aquello,aqui,aquí,arriba,abajo,asi,aun,aún,aunque,bajo,bastante,casi,cerca,claro,cómo,contra,cuales,cuanta,cuantas,cuanto,cuantos,debajo,delante,demasiado,dentro,deprisa,desde,despacio,despues,detras,dia,día,dias,días,donde,durante,e,esos,esas,ésta,estan,estar,ese,eso,ella,ellas,ellos,encima,enfrente,frente,enseguida,esa,éste,ex,excepto,final,fue,fuera,fueron,ha,habia,había,habla,hablan,hace,hacia,han,hasta,junto,lado,lejos,luego,mal,mas,mayor,me,medio,mejor,menos,menudo,mi,mia,mias,mientras,mio,mios,mis,mucho,nada,nadie,ninguna,nos,nosotras,nosotros,nuestra,nuestras,nuestro,nuestros,nueva,nuevo,nunca,otro,otra,otros,otras,peor,quienes,quiza,quizá,quizas,quizás,raras,rara,raro,raros,repente,salvo,segun,según,sera,será,sí,sido,siempre,sobre,solamente,solo,sólo,su,tiene,supuesto,suya,suyo,suyas,suyos,también,tarde,te,temprano,ti,todavia,todavía,todo,todos,tu,tus,tuya,tuyas,tuyo,tuyos,u,usted,ustedes,veces,yo");
	
	@Autowired
	private IDocumentoService docu;
	@Autowired
	private IPalabraService pal;
	@Autowired
	private IIndiceService in;
	
	@GetMapping("/documentos")
	public List<Documento> index(){
		return docu.findAll();
	}
	
	@GetMapping("/documentos/{id}")
	public Documento show(@PathVariable Long id){
		return docu.findById(id);
	}
	//crear
	@PostMapping("/documentos")
	@ResponseStatus(HttpStatus.CREATED)
	public Documento create(@RequestBody Documento documen) {
		//convertir(documen.getTituloDoc(), documen.getTextoDoc());
		
		Documento auxiliar = new Documento();
		auxiliar.setTituloDoc(documen.getTituloDoc());
		StringTokenizer st = new StringTokenizer(documen.getTextoDoc());
        String aux = st.nextToken();
		if(!aux.equals("<!DOCTYPE html>") && !aux.equals("<html>")){
			auxiliar.setTextoDoc("<!DOCTYPE html>\n<html>\n<head>\n<meta charset=\"UTF-8\">\n</head>\n<body>\n" + documen.getTextoDoc()+ "</body>\n</html>\n");
		}else {
			auxiliar.setTextoDoc(documen.getTextoDoc());
		}
		docu.save(auxiliar);
		convertir(auxiliar.getTituloDoc(), auxiliar.getTextoDoc());
		
		HashMap<String, Integer> palDoc = procesarTexto(auxiliar.getTextoDoc());
		ArrayList<String> as = new ArrayList<String>(palDoc.keySet());
		
		for (String aux1:as) {
			Indice i = new Indice();
			i.setPalabra(aux1);
			i.setNumeroDoc(getId(auxiliar));
			i.setCantidad(new Long(palDoc.get(aux1)));
			in.save(i);
		}
		return null;
	}
	private Long getId(Documento d) {
		List<Documento>aux = docu.findAll();
		Long a = new Long(0);
		for (Documento documento : aux) {
			if(d.getTituloDoc().equals(documento.getTituloDoc())&&d.getTextoDoc().equals(documento.getTextoDoc())) {
				a = d.getIdDoc();
			}
		}
		return a;
		
	}
	
	public void convertir(String t, String s) {        
        try {
			File f;
	        f = new File(t + ".html");
	        FileOutputStream fileStream = new FileOutputStream(f);
	        OutputStreamWriter fw = new OutputStreamWriter(fileStream, "UTF-8");
	        fw.write(s);
	        fw.close();
        
        }catch(IOException e) {}
    }
	
	@PutMapping("/documentos/{id}")
	@ResponseStatus(HttpStatus.CREATED)
	public Documento update(@RequestBody Documento documen, @PathVariable Long id) {
		Documento documenActual = docu.findById(id);
		
		documenActual.setTituloDoc(documen.getTituloDoc());
		documenActual.setTextoDoc(documen.getTextoDoc());;	
		
		return docu.save(documenActual);
	}
	
	@DeleteMapping("/documentos/{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void delete(@PathVariable Long id) {
		docu.delete(id);
	}
	public HashMap<String,Integer> procesarTexto(String text){
		Trie palabrasClave = new Trie();
        int ini = buscarBody(text);
        boolean abierto = false;
        boolean palabraVacia = true;
        Vertice actual = palabrasVacias.getTrie().get(0);
        String palabraActual = "";
        for(int  i = ini; i < text.length();i++){
            char a = text.charAt(i);
            String  carac  = a +"";
            carac = carac.toLowerCase();
            carac = Normalizer.normalize(carac, Normalizer.Form.NFD).replaceAll("\\p{InCOmbiningDiacriticalMarks}+", "");
            a = carac.charAt(0);
            if(a == '<'){
                abierto = true;
                if(palabraVacia && !palabraActual.equals("")){
                    palabrasClave.añadirCadena(palabraActual);
                }
                palabraVacia = true;
                actual = palabrasVacias.getTrie().get(0);
                palabraActual = "";
            }else if(a == '>' || a == 10){
                abierto = false;
            }else if(!abierto){
                if(a < 'a' || a > 'z'){ // signos de puntuacion
                    if((!palabraVacia && !palabraActual.equals("")) || (palabraVacia && !actual.isHoja() && !palabraActual.equals(""))){
                		if (palabraActual.length()>2) {
                			palabrasClave.añadirCadena(palabraActual);
						}
                    }
                    palabraVacia = true;
                    actual = palabrasVacias.getTrie().get(0);
                    palabraActual = "";
                }else{
                    if(actual.getSiguiente()[a-'a'] != -1){
                        actual = palabrasVacias.getTrie().get(actual.getSiguiente()[a-'a']);
                    }else{
                        palabraVacia = false;
                    }
                    palabraActual += a;
                }
            }
        }
        HashMap<String,Integer> res = palabrasClave.getLista();
        return res;
    }
    
    private int buscarBody(String text){
        int res = 0;
        String patron = "<body>";
        int j = 0;
        boolean encontrado = false;
        for(int i = 0; i < text.length() && !encontrado; i++){
            char a = text.charAt(i);
            char b = patron.charAt(j);
            if(a == b){
                j++;
                encontrado = j == patron.length();
                if(encontrado){
                    res = i;
                }
            }
        }
        return res+1;
    }
}
