import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ShirtService } from '../../services/shirt.service';
import { ConsumoTiendaService } from '../../services/consumo-tienda.service';

// Iconos
import { NgIconComponent, provideIcons } from '@ng-icons/core';
import { featherAirplay } from '@ng-icons/feather-icons';
import { bootstrapCheckCircleFill } from '@ng-icons/bootstrap-icons';

@Component({
  selector: 'app-ver-mas',
  standalone: true,
  imports: [NgIconComponent],
  viewProviders: [provideIcons({ featherAirplay, bootstrapCheckCircleFill })],
  templateUrl: './ver-mas.component.html',
  styleUrl: './ver-mas.component.scss',
})
export class VerMasComponent implements OnInit {
  shirt: any;

  constructor(
    private route: ActivatedRoute,
    private shirtService: ShirtService,
    private consumoTiendaService: ConsumoTiendaService,
    private router: Router
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

  addToCart(event: Event): void {
    event.preventDefault();

    const selectedColorInput = document.querySelector<HTMLInputElement>(
      'input[name="color"]:checked'
    );
    const selectedSizeInput = document.querySelector<HTMLInputElement>(
      'input[name="size"]:checked'
    );
    const quantityInput = document.getElementById(
      'quantity'
    ) as HTMLSelectElement;

    if (selectedColorInput && selectedSizeInput && quantityInput) {
      const selectedColor = selectedColorInput.value;
      const selectedSize = selectedSizeInput.value;
      const selectedQuantity = parseInt(quantityInput.value);

      const cartItem = {
        id: this.shirt.id,
        player: this.shirt.player,
        team: this.shirt.team,
        price: this.shirt.price,
        color: selectedColor,
        size: selectedSize,
        quantity: selectedQuantity,
        image: this.shirt.image_url,
      };

      let cartItems = JSON.parse(localStorage.getItem('cartItems') || '[]');
      cartItems.push(cartItem);
      localStorage.setItem('cartItems', JSON.stringify(cartItems));
      console.log('Elemento agregado al carrito.');
    } else {
      console.error('No se encontraron elementos seleccionados.');
    }
    console.log('redirect a tienda');
    this.router.navigate(['/tienda']);
  }
}
