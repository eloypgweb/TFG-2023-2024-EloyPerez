import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ShirtService } from '../../services/shirt.service';
import { ConsumoTiendaService } from '../../services/consumo-tienda.service';

@Component({
  selector: 'app-ver-mas',
  standalone: true,
  imports: [],
  templateUrl: './ver-mas.component.html',
  styleUrl: './ver-mas.component.scss',
})
export class VerMasComponent implements OnInit {
  shirt: any;

  constructor(
    private route: ActivatedRoute,
    private shirtService: ShirtService,
    private consumoTiendaService: ConsumoTiendaService
  ) {}

  ngOnInit(): void {
    this.shirtService.selectedShirt$.subscribe((shirt) => {
      if (shirt) {
        this.shirt = shirt;
      } else {
        const shirtId = this.route.snapshot.paramMap.get('id');
        if (shirtId) {
          this.consumoTiendaService.getShirtById(shirtId).subscribe((data) => {
            this.shirt = data;
          });
        }
      }
    });
  }
}
