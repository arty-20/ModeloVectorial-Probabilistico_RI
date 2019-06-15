import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { DocumentoComponent } from './documento/documento.component';
import { CrearComponent } from './documento/crear/crear.component';
import { BusquedaComponent } from './busqueda/busqueda.component';
import { BuscarComponent } from './busqueda/buscar/buscar.component';
import { ResultadosComponent } from './busqueda/resultados/resultados.component';
import { ResComponent } from './busqueda/res/res.component';

@NgModule({
  declarations: [
    AppComponent,
    DocumentoComponent,
    CrearComponent,
    BusquedaComponent,
    BuscarComponent,
    ResultadosComponent,
    ResComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
