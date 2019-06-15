import { Component, OnInit } from '@angular/core';
import { BusquedaService } from './../../busqueda.service';

@Component({
  selector: 'app-resultados',
  templateUrl: './resultados.component.html',
  styleUrls: ['./resultados.component.css']
})
export class ResultadosComponent implements OnInit {

  busquedas;
  constructor(private serviCategoria: BusquedaService) {
      this.serviCategoria.getBusqueda().subscribe(data => {
      this.busquedas = data;
    });
  }
  ngOnInit() {
  }

}
