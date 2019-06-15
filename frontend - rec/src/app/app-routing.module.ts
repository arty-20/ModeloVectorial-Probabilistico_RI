import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DocumentoComponent } from './documento/documento.component';
import { BuscarComponent } from './busqueda/buscar/buscar.component';
import { BusquedaComponent } from './busqueda/busqueda.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'busqueda',
    pathMatch: 'full'
  },
  {
    path:'documento',
    component: DocumentoComponent
  },
  {
    path:'busqueda',
    component: BusquedaComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
