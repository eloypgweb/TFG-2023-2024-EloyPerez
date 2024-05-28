import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private get token(): string | null {
    return localStorage.getItem('authToken');
  }

  private set token(value: string | null) {
    if (value === null) {
      localStorage.removeItem('authToken');
    } else {
      localStorage.setItem('authToken', value);
    }
  }

  isLoggedIn(): boolean {
    return !!this.token;
  }

  login(username: string, password: string): boolean {
    if (username === 'user' && password === '123') {
      this.token = 'sesion-iniciada';
      return true;
    }
    return false;
  }

  logout(): void {
    this.token = null;
  }
}
