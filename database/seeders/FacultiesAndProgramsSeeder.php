<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class FacultiesAndProgramsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Seeder untuk Program Studi
            $faculties = [
            'Fakultas Ekonomi dan Bisnis' => [
                'Program Studi Manajemen S-1',
                'Program Studi Akuntansi S-1',
                'Program Studi Administrasi Perkantoran D-3',
                'Program Studi Akuntansi Perpajakan D-4',
                'Program Studi Manajemen S-1 (PSDKU, Serang)',
                'Program Studi Akuntansi S-1 (PSDKU, Serang)',
            ],
            'Fakultas Hukum' => [
                'Program Studi Ilmu Hukum S-1',
                'Program Studi Ilmu Hukum S-1 (PSDKU, Serang)',
            ],
            'Fakultas Sastra' => [
                'Program Studi Sastra Inggris S-1',
                'Program Studi Sastra Indonesia S-1',
            ],
            'Fakultas Teknik' => [
                'Program Studi Teknik Mesin S-1',
                'Program Studi Teknik Industri S-1',
                'Program Studi Teknik Elektro S-1',
                'Program Studi Teknik Kimia S-1',
                'Program Studi Teknik Mesin S-1 (PSDKU, Serang)',
                'Program Studi Teknik Elektro S-1 (PSDKU, Serang)',
            ],
            'Fakultas Ilmu Komputer' => [
                'Program Studi Teknik Informatika S-1',
                'Program Studi Sistem Informasi S-1',
                'Program Studi Sistem Komputer S-1 (PSDKU, Serang)',
                'Program Studi Sistem Informasi S-1 (PSDKU, Serang)',
            ],
            'Fakultas Keguruan dan Ilmu Pendidikan' => [
                'Program Studi Pendidikan Pancasila dan Kewarganegaraan S-1',
                'Program Studi Pendidikan Ekonomi S-1',
                'Pendidikan Guru Sekolah Dasar S-1',
                'Pendidikan Jasmani S-1',
                'Pendidikan Profesi Guru',
            ],
            'Fakultas Matematika dan Ilmu Pengetahuan Alam' => [
                'Program Studi Matematika S-1',
                'Program Studi Matematika S-1 (PSDKU, Serang)',
                'Program Studi Biologi S-1 (PSDKU, Serang)',
                'Program Studi Kimia S-1 (PSDKU, Serang)',
            ],
            'Fakultas Agama Islam' => [
                'Program Studi Manajemen Pendidikan Islam S-1',
                'Program Studi Ekonomi Syariah S-1',
            ],
            'Fakultas Ilmu Komunikasi' => [
                'Program Studi Ilmu Komunikasi S-1',
            ],
            'Fakultas Ilmu Sosial dan Ilmu Politik' => [
                'Program Studi Administrasi Negara S-1 (PSDKU, Serang)',
                'Program Studi Ilmu Pemerintahan S-1 (PSDKU, Serang)',
            ],
            'Program Pascasarjana' => [
                'Program Studi Ilmu Hukum S-2',
                'Program Studi Manajemen S-2',
                'Program Studi Teknik Informatika S-2',
                'Program Studi Akuntansi S-2',
                'Program Studi Manajemen Pendidikan S-2',
            ],
        ];

        foreach ($faculties as $facultyName => $programs) {
            $facultyId = DB::table('faculties')->insertGetId([
                'slug' => Str::slug($facultyName),
                'faculty_name' => $facultyName,
                'created_at' => now(),
                'updated_at' => now(),
            ]);

            foreach ($programs as $programName) {
                DB::table('academic_programs')->insert([
                    'slug' => Str::slug($programName),
                    'program_name' => $programName,
                    'faculty_id' => $facultyId,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
