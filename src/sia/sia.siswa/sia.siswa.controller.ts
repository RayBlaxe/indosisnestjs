import { Body, Controller, Header, Post } from "@nestjs/common";
import { SiaSiswaService } from "./sia.siswa.service";
import { createSiswaDto } from "./dto/create.siswa.dto";

@Controller('siswa')
export class SiaSiswaController {
    constructor(private createSiswaService: SiaSiswaService){}

    @Post('create')
    @Header('Content-Type','application/json')
    createSiswa(@Body() body){
        console.log(body)
        return body.name;
    }

    @Post('add')
    @Header('Content-Type','application/json')
    addSiswa(@Body() body:createSiswaDto){
        return this.createSiswaService.ceateSiswa(body)
    }
}