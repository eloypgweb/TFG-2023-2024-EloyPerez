import { TestBed } from '@angular/core/testing';

import { ConsumoTiendaService } from './consumo-tienda.service';

describe('ConsumoTiendaService', () => {
  let service: ConsumoTiendaService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ConsumoTiendaService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
