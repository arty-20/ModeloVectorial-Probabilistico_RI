import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class BusquedaService {

  constructor(private servicio: HttpClient) { 
    console.log('servicio levantado');
  }
  getBusqueda() {
    return this.servicio.get('http://localhost:8080/api/indices');
  }

  buscar(palabra) {
    this.servicio.post('http://localhost:8080/api/indices', palabra).subscribe(
      data => {
        console.log("Guardado", data);
        console.log(palabra);
        return data;
      },
      error => {
          console.log("Error: ", error);
          console.log(palabra);
      }
    );
  }
}
