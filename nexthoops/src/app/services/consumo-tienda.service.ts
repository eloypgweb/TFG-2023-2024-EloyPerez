import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ConsumoTiendaService {
  private baseUrl = 'http://localhost:8095/tienda'; // Ajusta la URL de tu backend

  constructor(private http: HttpClient) {}

  getTienda(): Observable<any[]> {
    return this.http.get<any[]>(`${this.baseUrl}/todos`);
  }

  getShirtById(id: string): Observable<any> {
    return this.http.get<any>(`${this.baseUrl}/${id}`);
  }
}
