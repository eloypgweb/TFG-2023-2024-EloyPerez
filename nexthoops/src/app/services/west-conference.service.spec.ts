import { TestBed } from '@angular/core/testing';

import { WestConferenceService } from './west-conference.service';

describe('WestConferenceService', () => {
  let service: WestConferenceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(WestConferenceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
