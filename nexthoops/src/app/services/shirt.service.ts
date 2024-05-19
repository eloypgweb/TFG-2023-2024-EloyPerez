import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ShirtService {
  private selectedShirtSource = new BehaviorSubject<any>(null);
  selectedShirt$ = this.selectedShirtSource.asObservable();

  selectShirt(shirt: any) {
    this.selectedShirtSource.next(shirt);
  }
}
