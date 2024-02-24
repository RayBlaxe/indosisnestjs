import { Module, NestModule } from '@nestjs/common';
import { SiaSiswaService } from './sia.siswa.service';
import { PrismaService } from 'src/prisma.service';
import { SiaSiswaController } from './sia.siswa.controller';

@Module({
    controllers: [SiaSiswaController],
    providers: [SiaSiswaService, PrismaService]
})
export class SiaSiswaModule {}