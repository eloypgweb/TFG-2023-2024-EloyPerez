import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'money',
  pure: true,
})
export class MoneyPipe implements PipeTransform {
  transform(value: number, ...args: unknown[]): string | null {
    if (value !== undefined && value !== null) {
      return value.toFixed(2);
    }
    return null;
  }
}
