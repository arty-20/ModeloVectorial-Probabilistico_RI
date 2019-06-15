import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DocumentoService {

  constructor(private servicio: HttpClient) { 
    console.log('servicio levantado');
  }
  getDocumento() {
    return this.servicio.get('http://localhost:8080/api/documentos');
  }

  addDocumento(newDoc) {
    this.servicio.post('http://localhost:8080/api/documentos', newDoc).subscribe(
      data => {
        console.log("Guardado", data);
        console.log(newDoc);
        return data;
      },
      error => {
          console.log("Error: ", error);
          console.log(newDoc);
      }
    );
  } 
}
