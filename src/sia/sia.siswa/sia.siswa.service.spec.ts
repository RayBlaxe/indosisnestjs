import { Test, TestingModule } from '@nestjs/testing';
import { SiaSiswaService } from './sia.siswa.service';

describe('SiaSiswaService', () => {
  let service: SiaSiswaService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [SiaSiswaService],
    }).compile();

    service = module.get<SiaSiswaService>(SiaSiswaService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
