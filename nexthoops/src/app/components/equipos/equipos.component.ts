import { Component } from '@angular/core';
import { NgFor } from '@angular/common';

// Servicios
import { EastConferenceService } from '../../services/east-conference.service';
import { WestConferenceService } from '../../services/west-conference.service';

@Component({
  selector: 'app-equipos',
  standalone: true,
  imports: [NgFor],
  templateUrl: './equipos.component.html',
  styleUrl: './equipos.component.scss',
})
export class EquiposComponent {
  east: any[] = [];
  west: any[] = [];

  constructor(
    private eastConferenceService: EastConferenceService,
    private westConferenceService: WestConferenceService
  ) {}

  ngOnInit() {
    this.eastConferenceService.getEastConference().subscribe((data: any) => {
      console.log(data);
      this.east = data;
    });
    this.westConferenceService.getWestConference().subscribe((data: any) => {
      console.log(data);
      this.west = data;
    });
  }
}
