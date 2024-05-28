import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

// Mis pipes
import { MoneyPipe } from './money.pipe';
import { FilterShirtsPipe } from './filter-shirts.pipe';

@NgModule({
  declarations: [MoneyPipe, FilterShirtsPipe],
  exports: [MoneyPipe, FilterShirtsPipe],
  imports: [CommonModule],
})
export class MypipesModule {}
