import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SiaSiswaModule } from './sia/sia.siswa/sia.siswa.module';
import { SiaSiswaService } from './sia/sia.siswa/sia.siswa.service';
import { SiaSiswaController } from './sia/sia.siswa/sia.siswa.controller';


@Module({
  imports: [SiaSiswaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
