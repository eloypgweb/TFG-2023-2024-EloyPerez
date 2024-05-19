import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class EastConferenceService {
  constructor(private http: HttpClient) {}

  getEastConference() {
    return this.http.get('https://apimocha.com/east-conference/east');
  }
}
