import { Routes } from '@angular/router';
import { authGuard } from './shared/auth.guard';

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
    path: 'tienda/:id',
    loadComponent: () =>
      import('./components/ver-mas/ver-mas.component').then(
        (m) => m.VerMasComponent
      ),
    canActivate: [authGuard],
  },
  {
    path: 'login',
    loadComponent: () =>
      import('./components/login/login.component').then(
        (h) => h.LoginComponent
      ),
  },
  {
    path: 'cart',
    loadComponent: () =>
      import('./shared/cart/cart.component').then((h) => h.CartComponent),
    canActivate: [authGuard],
  },
  {
    path: '**',
    loadComponent: () =>
      import('./shared/not-found-page/not-found-page.component').then(
        (n) => n.NotFoundPageComponent
      ),
  },
];
