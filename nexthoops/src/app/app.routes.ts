import { Routes } from '@angular/router';

export const routes: Routes = [
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  {
    path: 'home',
    loadComponent: () =>
      import('./components/home/home.component').then((h) => h.HomeComponent),
  },
  {
    path: 'tienda',
    loadComponent: () =>
      import('./components/tienda/tienda.component').then(
        (h) => h.TiendaComponent
      ),
  },
  {
    path: 'jugadores',
    loadComponent: () =>
      import('./components/jugadores/jugadores.component').then(
        (h) => h.JugadoresComponent
      ),
  },
  {
    path: 'equipos',
    loadComponent: () =>
      import('./components/equipos/equipos.component').then(
        (h) => h.EquiposComponent
      ),
  },
  {
    path: 'draft',
    loadComponent: () =>
      import('./components/draft/draft.component').then(
        (h) => h.DraftComponent
      ),
  },
  {
    path: 'tienda/:id',
    loadComponent: () =>
      import('./components/ver-mas/ver-mas.component').then(
        (m) => m.VerMasComponent
      ),
  },
  {
    path: '**',
    loadComponent: () =>
      import('./shared/not-found-page/not-found-page.component').then(
        (n) => n.NotFoundPageComponent
      ),
  },
];
