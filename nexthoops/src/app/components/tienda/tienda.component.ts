import { Component, OnInit } from '@angular/core';
import { ConsumoTiendaService } from '../../services/consumo-tienda.service';
import { CommonModule, NgFor, NgForOf, NgIf } from '@angular/common';
import { RouterLink } from '@angular/router';
import { ShirtService } from '../../services/shirt.service';
import { Router } from '@angular/router';
import { FilterMenuComponent } from '../filter-menu/filter-menu.component';

@Component({
  selector: 'app-tienda',
  standalone: true,
  imports: [
    NgFor,
    RouterLink,
    NgIf,
    NgForOf,
    FilterMenuComponent,
    CommonModule,
  ],
  templateUrl: './tienda.component.html',
  styleUrl: './tienda.component.scss',
})
export class TiendaComponent implements OnInit {
  tienda: any[] = [];
  originalTienda: any[] = [];
  filteredTienda: any[] = [];
  showFilterMenu = false;

  constructor(
    private consumoTiendaService: ConsumoTiendaService,
    private shirtService: ShirtService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.consumoTiendaService.getTienda().subscribe((data: any[]) => {
      this.tienda = data;
      this.originalTienda = [...data];
      this.filteredTienda = data;
    });
  }

  viewShirt(shirt: any) {
    this.shirtService.selectShirt(shirt);
    this.router.navigate(['/tienda', shirt.id]);
  }

  toggleFilterMenu() {
    this.showFilterMenu = !this.showFilterMenu;
  }

  sortShirts(event: Event) {
    const sortOrder = (event.target as HTMLSelectElement).value;
    if (sortOrder === 'low-to-high') {
      this.tienda.sort((a, b) => a.price - b.price);
    } else if (sortOrder === 'high-to-low') {
      this.tienda.sort((a, b) => b.price - a.price);
    } else if (sortOrder === 'no-sort') {
      this.tienda = [...this.originalTienda]; // Restablecemos la lista original
    }
  }

  applyFilters(filters: any) {
    this.filteredTienda = this.tienda.filter((item) => {
      const price = parseFloat(item.price);
      return (
        (!filters.team || item.team === filters.team) &&
        (!filters.conference || item.conference === filters.conference) &&
        (!filters.material || item.material === filters.material) &&
        price >= filters.priceRange.min
      );
    });
  }
}
