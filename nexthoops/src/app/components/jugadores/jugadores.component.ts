// De Angular
import { Component } from '@angular/core';
import { MatCardModule } from '@angular/material/card';

// Servicio
import { PlayersService } from '../../services/players.service';
import { NgFor } from '@angular/common';

@Component({
  selector: 'app-jugadores',
  standalone: true,
  imports: [MatCardModule, NgFor],
  templateUrl: './jugadores.component.html',
  styleUrl: './jugadores.component.scss',
})
export class JugadoresComponent {
  players: any = [];

  constructor(public playersService: PlayersService) {
    console.log('JugadoresComponent initialized');
  }
  ngOnInit() {
    console.log('JugadoresComponent initialized');
    this.players = this.playersService.players;
  }
}
