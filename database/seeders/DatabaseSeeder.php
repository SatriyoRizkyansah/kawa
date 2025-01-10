<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Seeder untuk User
        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        // Seeder untuk Universities
        DB::table('universities')->insert([
            ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Pusat', 'slug' => 'kampus-pusat', 'description' => 'Deskripsi untuk Kampus Pusat'],
            ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Viktor', 'slug' => 'kampus-viktor', 'description' => 'Deskripsi untuk Kampus Viktor'],
            ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Witana', 'slug' => 'kampus-witana', 'description' => 'Deskripsi untuk Kampus Witana'],
            ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Serang', 'slug' => 'kampus-serang', 'description' => 'Deskripsi untuk Kampus Serang'],
        ]);

        // Seeder untuk Buildings (A, B, C di setiap Universitas)
        $buildingNames = ['A', 'B', 'C'];


        // foreach (range(1, 4) as $universityId) {
        //     foreach ($buildingNames as $name) {
        //         // Generate hashed ID for the building
        //         $buildingId = DB::table('buildings')->insertGetId([
        //             'id' => md5(Carbon::now()->format('YmdHis') . uniqid()), // Generate unique ID
        //             'building_name' => 'Gedung ' . $name,
        //             'slug' => 'gedung-' . strtolower($name) . '-u' . $universityId,
        //             'university_id' => $universityId,
        //             'created_at' => now(),
        //             'updated_at' => now(),
        //         ]);

        //         // Seeder untuk Floors (1 - 10 di setiap Gedung)
        //         for ($floor = 1; $floor <= 10; $floor++) {
        //             // Generate hashed ID for the floor
        //             $floorId = DB::table('floors')->insertGetId([
        //                 'id' => md5(Carbon::now()->format('YmdHis') . uniqid()), // Generate unique ID
        //                 'floor_name' => 'Lantai ' . $floor,
        //                 'slug' => 'lantai-' . $floor . '-g' . $buildingId,
        //                 'university_id' => $universityId, // Menambahkan university_id dari gedung
        //                 'building_id' => $buildingId,
        //                 'created_at' => now(),
        //                 'updated_at' => now(),
        //             ]);

        //             // Seeder untuk Cameras (Minimal 5 Kamera per Lantai)
        //             for ($camera = 1; $camera <= 5; $camera++) {
        //                 DB::table('cameras')->insert([
        //                     'id' => md5(Carbon::now()->format('YmdHis') . uniqid()), // Generate unique ID
        //                     'nama_kamera' => 'CAM ' . $camera . '-L' . $floor . '-G' . $buildingId,
        //                     'rtsp' => 'http://example.com/stream' . $camera,
        //                     'description' => 'Deskripsi Kamera ' . $camera,
        //                     'device_color' => ['Black', 'White', 'Gray'][array_rand(['Black', 'White', 'Gray'])],
        //                     'ip' => '192.168.' . rand(1, 255) . '.' . rand(1, 255),
        //                     'type' => ['CCTV', 'Surveillance'][array_rand(['CCTV', 'Surveillance'])],
        //                     'brand' => 'Brand ' . chr(65 + ($camera % 26)),
        //                     'version_model' => 'V' . rand(1, 5) . '.' . rand(0, 9),
        //                     'installation_date' => now()->subDays(rand(1, 365))->toDateString(),
        //                     'university_id' => $universityId,
        //                     'building_id' => $buildingId,
        //                     'floor_id' => $floorId,
        //                     'created_at' => now(),
        //                     'updated_at' => now(),
        //                 ]);
        //             }
        //         }
        //     }
        // }

    }
}
