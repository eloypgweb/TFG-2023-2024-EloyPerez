import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filterShirts',
  pure: true,
})
export class FilterShirtsPipe implements PipeTransform {
  transform(shirts: any[], filters: any): any[] {
    if (!shirts) return [];
    if (!filters) return shirts;

    let filteredShirts = shirts;

    if (filters.team) {
      filteredShirts = filteredShirts.filter(
        (shirt) => shirt.team === filters.team
      );
    }

    if (filters.priceMin != null) {
      filteredShirts = filteredShirts.filter(
        (shirt) => shirt.price >= filters.priceMin
      );
    }

    if (filters.priceMax != null) {
      filteredShirts = filteredShirts.filter(
        (shirt) => shirt.price <= filters.priceMax
      );
    }

    if (filters.conference) {
      filteredShirts = filteredShirts.filter(
        (shirt) => shirt.conference === filters.conference
      );
    }

    if (filters.material) {
      filteredShirts = filteredShirts.filter(
        (shirt) => shirt.material === filters.material
      );
    }

    return filteredShirts;
  }
}
