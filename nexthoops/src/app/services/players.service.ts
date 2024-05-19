import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class PlayersService {
  players: any = {};
  loaded = false;

  constructor(private http: HttpClient) {
    console.log('PlayersService initialized');
    this.loadData();
  }

  loadData() {
    this.http.get('../../assets/data/players.json').subscribe((data) => {
      this.players = data;
      this.loaded = true;
      console.log('Data de PLAYERS');
      console.log(this.players);
    });
  }
}
