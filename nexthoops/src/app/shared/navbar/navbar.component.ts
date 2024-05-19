// De Angular
import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';
import { Router } from '@angular/router';

// Iconos
import { NgIconComponent, provideIcons } from '@ng-icons/core';
import { featherAirplay } from '@ng-icons/feather-icons';
import { heroUsers } from '@ng-icons/heroicons/outline';
import {
  bootstrapCart4,
  bootstrapStarFill,
  bootstrapBalloon,
  bootstrapBanFill,
} from '@ng-icons/bootstrap-icons';

@Component({
  selector: 'app-navbar',
  standalone: true,
  imports: [NgIconComponent, RouterLink],
  viewProviders: [
    provideIcons({
      bootstrapCart4,
      bootstrapStarFill,
      bootstrapBalloon,
      bootstrapBanFill,
      featherAirplay,
      heroUsers,
    }),
  ],
  templateUrl: './navbar.component.html',
  styleUrl: './navbar.component.scss',
})
export class NavbarComponent {
  constructor(private router: Router) {}

  ngOnInit() {}

  toHome() {
    console.log('A home');
    this.router.navigate(['/home']);
  }

  toShop() {
    console.log('A tienda');
    this.router.navigate(['/tienda']);
  }

  toPlayers() {
    console.log('A jugadores');
    this.router.navigate(['/jugadores']);
  }

  toTeams() {
    console.log('A equipos');
    this.router.navigate(['/equipos']);
  }

  toDraft() {
    console.log('A draft');
    this.router.navigate(['/draft']);
  }
}
