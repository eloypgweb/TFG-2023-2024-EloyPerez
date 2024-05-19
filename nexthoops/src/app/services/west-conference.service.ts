import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class WestConferenceService {
  constructor(private http: HttpClient) {}

  getWestConference() {
    return this.http.get('https://apimocha.com/west-conference/west');
  }
}
