import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  constructor() {}

  isLoggedIn(): boolean {
    return !!localStorage.getItem('token'); // Verifica si hay un token en el almacenamiento local
  }

  login(username: string, password: string): boolean {
    if (username === 'user' && password === '123') {
      localStorage.setItem('token', 'sesion-iniciada'); // Almacena un token simulado en el almacenamiento local
      return true;
    }
    return false;
  }

  logout(): void {
    localStorage.removeItem('token'); // Elimina el token del almacenamiento local
  }
}
