import { CommonModule, NgFor, NgForOf, NgIf } from '@angular/common';
import { Component, Output, EventEmitter, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-filter-menu',
  standalone: true,
  imports: [FormsModule, CommonModule, NgFor, NgForOf, NgIf],
  templateUrl: './filter-menu.component.html',
  styleUrl: './filter-menu.component.scss',
})
export class FilterMenuComponent implements OnInit {
  @Output() filtersApplied = new EventEmitter<any>();
  // Output event emitter for closing the menu
  @Output() close = new EventEmitter<void>();

  selectedTeam: string = '';
  priceRange = { min: 0, max: 1000 };
  selectedConference: string = '';
  selectedMaterial: string = '';

  teams = [
    'Boston Celtics',
    'New York Knicks',
    'Milwaukee Bucks',
    'Cleveland Cavaliers',
    'Orlando Magic',
    'Indiana Pacers',
    'Philadelphia 76ers',
    'Miami Heat',
    'Chicago Bulls',
    'Atlanta Hawks',
    'Brooklyn Nets',
    'Toronto Raptors',
    'Charlotte Hornets',
    'Washington Wizards',
    'Detroit Pistons',
    'Oklahoma City Thunder',
    'Denver Nuggets',
    'Minnesota Timberwolves',
    'Los Angeles Clippers',
    'Dallas Mavericks',
    'Phoenix Suns',
    'Los Angeles Lakers',
    'New Orleans Pelicans',
    'Sacramento Kings',
    'Golden State Warriors',
    'Houston Rockets',
    'Utah Jazz',
    'Memphis Grizzlies',
    'San Antonio Spurs',
    'Portland Trail Blazers',
  ];
  conferences = ['Este', 'Oeste'];
  materials = ['Poliéster', 'Algodón'];

  ngOnInit(): void {
    // Aquí puedes cargar los datos reales desde tu servicio si es necesario
  }

  applyFilters() {
    const filters = {
      team: this.selectedTeam,
      priceRange: this.priceRange,
      conference: this.selectedConference,
      material: this.selectedMaterial,
    };
    this.filtersApplied.emit(filters);
    this.closeMenu();
  }

  closeMenu() {
    this.close.emit();
  }
}
