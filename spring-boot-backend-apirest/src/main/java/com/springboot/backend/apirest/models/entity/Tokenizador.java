package com.springboot.backend.apirest.models.entity;

import java.util.ArrayList;

public class Tokenizador {
	private ArrayList<String> palabrasVacias;
    public Tokenizador(){
        String[] p = {"si","bien","esta","de","o","el","es","para","y","muy","la","m�s","tal","que","en","incluso","cuando","se","est�","a","las","hay","tambien","�stas","los","est�n","varios","al","mismo","como","esto","com�n","un","despu�s","tras","breve","sus","Esto","entre","por","una","El","del","con","lo","da","Es","En","algunos","parte","sin","embargo","ser","generalmente","ya","son","Se","pero","no","gran","les","tanto","as�","La","crea","tales","acuerdo","caso","misma","este","estos","estas","tampoco","Una","uno","unas","unos","algunas","aquel","aqulla","aquella","aquellos","aquellas","Pero","�l","le","vez","ves","cual","adelante","ademas","adem�s","adrede","ahi","ah�","ahora","alli","all�","alrededor","ante","antes","apenas","aproximadamente","aqu�l","aquello","aqui","aqu�","arriba","abajo","asi","aun","a�n","aunque","bajo","bastante","casi","cerca","claro","c�mo","contra","cuales","cuanta","cuantas","cuanto","cuantos","debajo","delante","demasiado","dentro","deprisa","desde","despacio","despues","detras","dia","d�a","dias","d�as","donde","durante","e","esos","esas","�sta","estan","estar","ese","eso","ella","ellas","ellos","encima","enfrente","frente","enseguida","esa","�ste","ex","excepto","final","fue","fuera","fueron","ha","habia","hab�a","habla","hablan","hace","hacia","han","hasta","junto","lado","lejos","luego","mal","mas","mayor","me","medio","mejor","menos","menudo","mi","mia","mias","mientras","mio","mios","mis","mucho","nada","nadie","ninguna","nos","nosotras","nosotros","nuestra","nuestras","nuestro","nuestros","nueva","nuevo","nunca","otro","otra","otros","otras","peor","quienes","quiza","quiz�","quizas","quiz�s","raras","rara","raro","raros","repente","salvo","segun","seg�n","sera","ser�","s�","sido","siempre","sobre","solamente","solo","s�lo","su","tiene","supuesto","suya","suyo","suyas","suyos","tambi�n","tarde","te","temprano","ti","todavia","todav�a","todo","todos","tu","tus","tuya","tuyas","tuyo","tuyos","u","usted","ustedes","veces","yo"};
        palabrasVacias = new ArrayList();
        for(int i = 0; i < p.length; i++){
            palabrasVacias.add(p[i]);
        }
    }
    public ArrayList<String> tokenizar(String texto){
        ArrayList<String> res = new ArrayList();
        String[] separado = texto.split(" ");
        for(int i = 0; i < separado.length; i++){
            String token = limpiar(separado[i]);
            if(!palabrasVacias.contains(token)){
                res.add(token);
            }
        }
        return res;
    }
    private String limpiar(String string) {
        String res = "";
        for(int i = 0; i < string.length(); i++){
            char actual = string.charAt(i);
            if(actual != ','&&actual != ';'&&actual != '.'&&actual != '('&&actual != ')'&&actual != '«'&&actual != '»'&&actual != '¿'&&actual != '?'&&actual != '¡'&&actual != '!'){
                res = res + actual;
            }
        }
        return res;
    }
}
