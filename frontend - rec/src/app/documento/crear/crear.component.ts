import { Component, OnInit, Input } from '@angular/core';
import { DocumentoService } from '../../documento.service';

@Component({
  selector: 'app-crear',
  templateUrl: './crear.component.html',
  styleUrls: ['./crear.component.css']
})
export class CrearComponent implements OnInit {
  @Input() documento;
  docActual;
  constructor(private docSer: DocumentoService) { 
    this.docActual={
      tituloDoc: '',
      textoDoc: ''
    };
  }
  agregarDoc(docActual){
    this.docSer.addDocumento(docActual);
    location.reload();
  }
  ngOnInit() {
  }

}
