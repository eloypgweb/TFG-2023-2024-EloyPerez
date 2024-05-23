import { Component } from '@angular/core';
import {
  FormBuilder,
  FormGroup,
  ReactiveFormsModule,
  Validators,
} from '@angular/forms';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';
import { CommonModule, NgIf } from '@angular/common';

// Iconos
// Iconos
import { NgIconComponent, provideIcons } from '@ng-icons/core';
import { featherAirplay } from '@ng-icons/feather-icons';
import {
  bootstrapFacebook,
  bootstrapInstagram,
  bootstrapTwitterX,
} from '@ng-icons/bootstrap-icons';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule, NgIf, NgIconComponent],
  viewProviders: [
    provideIcons({
      bootstrapFacebook,
      bootstrapInstagram,
      bootstrapTwitterX,
      featherAirplay,
    }),
  ],
  templateUrl: './login.component.html',
  styleUrl: './login.component.scss',
})
export class LoginComponent {
  loginForm: FormGroup;
  errorMessage: string = '';

  constructor(
    private fb: FormBuilder,
    private authService: AuthService,
    private router: Router
  ) {
    this.loginForm = this.fb.group({
      username: ['', Validators.required],
      password: ['', Validators.required],
    });
  }

  onSubmit(): void {
    if (this.loginForm.valid) {
      const { username, password } = this.loginForm.value;
      const success = this.authService.login(username, password);
      if (success) {
        this.router.navigate(['/tienda']);
      } else {
        this.errorMessage = 'Error en el login. Revisa tus credenciales.';
      }
    }
  }
}
