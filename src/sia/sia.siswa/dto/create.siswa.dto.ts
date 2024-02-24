import { IsNotEmpty, IsString, isString } from "class-validator";

export class createSiswaDto{
    @IsString()
    @IsNotEmpty()
    siswa: string;

    @IsString()
    @IsNotEmpty()
    alamat: string;

    @IsString()
    @IsNotEmpty()
    ayah: string;

    @IsString()
    @IsNotEmpty()
    id_pekerjaan_ayah: string;

    @IsString()
    @IsNotEmpty()
    pekerjaan_ayah: string;

    @IsString()
    @IsNotEmpty()
    deskripsi_pekerjaan_ayah;

    @IsString()
    @IsNotEmpty()
    ibu: string;

    @IsString()
    @IsNotEmpty()
    id_pekerjaan_ibu: string;

    @IsString()
    @IsNotEmpty()
    pekerjaan_ibu: string;

    @IsString()
    @IsNotEmpty()
    deskripsi_pekerjaan_ibu;
}