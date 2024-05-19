import { TestBed } from '@angular/core/testing';

import { EastConferenceService } from './east-conference.service';

describe('EastConferenceService', () => {
  let service: EastConferenceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(EastConferenceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
