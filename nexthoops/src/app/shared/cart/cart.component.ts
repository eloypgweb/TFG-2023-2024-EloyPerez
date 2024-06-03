import { Component } from '@angular/core';

// Iconos
import { NgIconComponent, provideIcons } from '@ng-icons/core';
import {
  bootstrapTrash3,
  bootstrapPlus,
  bootstrapDash,
} from '@ng-icons/bootstrap-icons';
import { NgFor } from '@angular/common';

// Mis pipes custom
import { MypipesModule } from '../pipes/mypipes.module';

@Component({
  selector: 'app-cart',
  standalone: true,
  imports: [NgIconComponent, NgFor, MypipesModule],
  viewProviders: [
    provideIcons({ bootstrapTrash3, bootstrapPlus, bootstrapDash }),
  ],
  templateUrl: './cart.component.html',
  styleUrl: './cart.component.scss',
})
export class CartComponent {
  cartProducts: any[] = [];

  subtotal = 0;
  shipping = 4.99;

  constructor() {
    this.getCartProducts();
  }

  getCartProducts(): void {
    this.cartProducts = JSON.parse(localStorage.getItem('cartItems') || '[]');
    this.calculateSubtotal();
  }

  calculateSubtotal() {
    let subtotal = 0;
    for (let product of this.cartProducts) {
      subtotal += product.price * product.quantity;
    }
    this.subtotal = parseFloat(subtotal.toFixed(2));
  }

  minus(index: number): void {
    // Obtén el carrito actual del local storage
    let cartItems = JSON.parse(localStorage.getItem('cartItems') || '[]');

    // Disminuye la cantidad del producto en el índice especificado, pero no menos de 1
    cartItems[index].quantity = Math.max(1, cartItems[index].quantity - 1);

    // Guarda el carrito actualizado en el local storage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Actualiza los productos del carrito en el componente
    this.getCartProducts();
  }

  plus(index: number): void {
    // Obtén el carrito actual del local storage
    let cartItems = JSON.parse(localStorage.getItem('cartItems') || '[]');

    // Aumenta la cantidad del producto en el índice especificado
    cartItems[index].quantity++;

    // Guarda el carrito actualizado en el local storage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Actualiza los productos del carrito en el componente
    this.getCartProducts();
  }

  clearProduct(index: number): void {
    // Obtén el carrito actual del local storage
    let cartItems = JSON.parse(localStorage.getItem('cartItems') || '[]');

    // Elimina el producto en el índice especificado
    cartItems.splice(index, 1);

    // Guarda el carrito actualizado en el local storage
    localStorage.setItem('cartItems', JSON.stringify(cartItems));

    // Actualiza los productos del carrito en el componente
    this.getCartProducts();
  }

  shop() {
    // Elimina todos los productos del carrito
    // localStorage.removeItem('cartItems');

    // Actualiza los productos del carrito en el componente
    this.getCartProducts();

    // Muestra un modal con un mensaje
    window.alert('Función de pago no disponible...por el momento');
  }
}
