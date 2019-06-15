import { Component, OnInit, Input} from '@angular/core';
import { BusquedaService } from './../../busqueda.service';

@Component({
  selector: 'app-buscar',
  templateUrl: './buscar.component.html',
  styleUrls: ['./buscar.component.css']
})
export class BuscarComponent implements OnInit {

  @Input() documento;
  docActual;
  constructor(private docSer: BusquedaService) { 
    this.docActual={
      palabra: ''
    };
  }
  agregarDoc(docActual){
    this.docSer.buscar(docActual);
    location.reload();
  }

  ngOnInit() {
  }

}
