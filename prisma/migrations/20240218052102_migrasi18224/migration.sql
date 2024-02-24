-- CreateTable
CREATE TABLE "siswa" (
    "id_siswa" TEXT NOT NULL,
    "siswa" TEXT NOT NULL,
    "alamat" TEXT NOT NULL,
    "id_ayahs" TEXT NOT NULL,
    "id_ibu" TEXT NOT NULL,
    "updateat" TIMESTAMP(3) NOT NULL,
    "createdat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "siswa_pkey" PRIMARY KEY ("id_siswa")
);

-- CreateTable
CREATE TABLE "ayah" (
    "id_ayahs" TEXT NOT NULL,
    "ayah" TEXT NOT NULL,
    "id_pekerjaan" TEXT NOT NULL,
    "updateat" TIMESTAMP(3) NOT NULL,
    "createdat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ayah_pkey" PRIMARY KEY ("id_ayahs")
);

-- CreateTable
CREATE TABLE "ibu" (
    "id_ibu" TEXT NOT NULL,
    "ibu" TEXT NOT NULL,
    "id_pekerjaan" TEXT NOT NULL,
    "updateat" TIMESTAMP(3) NOT NULL,
    "createdat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "ibu_pkey" PRIMARY KEY ("id_ibu")
);

-- CreateTable
CREATE TABLE "prestasi" (
    "id_prestasi" TEXT NOT NULL,
    "prestasi" TEXT NOT NULL,
    "deskripsi" TEXT NOT NULL,
    "tahun" TIMESTAMP(3) NOT NULL,
    "id_siswa" TEXT NOT NULL,
    "updateat" TIMESTAMP(3) NOT NULL,
    "createdat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "prestasi_pkey" PRIMARY KEY ("id_prestasi")
);

-- CreateTable
CREATE TABLE "pekerjaan" (
    "id_pekerjaan" TEXT NOT NULL,
    "pekerjaan" TEXT NOT NULL,
    "deskripsi" TEXT,
    "updateat" TIMESTAMP(3) NOT NULL,
    "createdat" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "pekerjaan_pkey" PRIMARY KEY ("id_pekerjaan")
);

-- CreateIndex
CREATE UNIQUE INDEX "siswa_id_ayahs_key" ON "siswa"("id_ayahs");

-- CreateIndex
CREATE UNIQUE INDEX "siswa_id_ibu_key" ON "siswa"("id_ibu");

-- CreateIndex
CREATE UNIQUE INDEX "prestasi_id_siswa_key" ON "prestasi"("id_siswa");

-- AddForeignKey
ALTER TABLE "siswa" ADD CONSTRAINT "siswa_id_ayahs_fkey" FOREIGN KEY ("id_ayahs") REFERENCES "ayah"("id_ayahs") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "siswa" ADD CONSTRAINT "siswa_id_ibu_fkey" FOREIGN KEY ("id_ibu") REFERENCES "ibu"("id_ibu") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ayah" ADD CONSTRAINT "ayah_id_pekerjaan_fkey" FOREIGN KEY ("id_pekerjaan") REFERENCES "pekerjaan"("id_pekerjaan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ibu" ADD CONSTRAINT "ibu_id_pekerjaan_fkey" FOREIGN KEY ("id_pekerjaan") REFERENCES "pekerjaan"("id_pekerjaan") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "prestasi" ADD CONSTRAINT "prestasi_id_siswa_fkey" FOREIGN KEY ("id_siswa") REFERENCES "siswa"("id_siswa") ON DELETE RESTRICT ON UPDATE CASCADE;
