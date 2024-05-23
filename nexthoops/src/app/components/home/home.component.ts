import { AfterViewInit, Component, OnInit } from '@angular/core';
import { NgFor } from '@angular/common';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [],
  templateUrl: './home.component.html',
  styleUrl: './home.component.scss',
})
export class HomeComponent implements AfterViewInit {
  images: string[] = [
    '../../assets/img/i1.webp',
    '../../assets/img/i2.webp',
    '../../assets/img/i3.webp',
    '../../assets/img/i4.webp',
    '../../assets/img/i5.webp',
    '../../assets/img/i6.webp',
  ];
  currentImageIndex = 0;

  constructor() {}

  ngAfterViewInit(): void {}

  // ngAfterViewInit(): void {
  //   this.iniciarTimer();
  // }

  // iniciarTimer() {
  //   setInterval(() => {
  //     this.showNextImage();
  //   }, 3000);
  // }

  // showNextImage() {
  //   this.currentImageIndex = (this.currentImageIndex + 1) % this.images.length;
  // }
}
