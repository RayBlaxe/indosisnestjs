import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';
import { createSiswaDto } from './dto/create.siswa.dto';

@Injectable()
export class SiaSiswaService {
    constructor (private prisma: PrismaService){}

    async ceateSiswa(createSiswaDto : createSiswaDto){
        await this.prisma.siswa.create({
            data:{
                siswa: createSiswaDto.siswa,
                alamat: createSiswaDto.alamat,
                ayah: {
                    create:{
                        ayah: createSiswaDto.ayah,
                        pekerjaan:{
                            connectOrCreate:{
                                where:{
                                    id_pekerjaan: createSiswaDto.id_pekerjaan_ayah,
                                },
                                create: {
                                    pekerjaan: createSiswaDto.pekerjaan_ayah,
                                    deskripsi: createSiswaDto.deskripsi_pekerjaan_ayah,
                                }
                            }
                        }
                    }
                },
                ibu: {
                    create:{
                        ibu: createSiswaDto.ibu,
                        pekerjaan: {
                            connectOrCreate: {
                                where: {
                                    id_pekerjaan: createSiswaDto.id_pekerjaan_ibu,
                                },
                                create:{
                                    pekerjaan: createSiswaDto.pekerjaan_ibu,
                                    deskripsi: createSiswaDto.deskripsi_pekerjaan_ibu,
                                }
                            }
                        }
                    }
                }
            }
        })
    }
}
