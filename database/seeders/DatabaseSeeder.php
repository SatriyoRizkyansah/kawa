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
        // DB::table('universities')->insert([
        //     ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Pusat', 'slug' => 'kampus-pusat', 'description' => 'Deskripsi untuk Kampus Pusat'],
        //     ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Viktor', 'slug' => 'kampus-viktor', 'description' => 'Deskripsi untuk Kampus Viktor'],
        //     ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Witana', 'slug' => 'kampus-witana', 'description' => 'Deskripsi untuk Kampus Witana'],
        //     ['id' => md5(Carbon::now()->format('YmdHis') . uniqid()),'university_name' => 'Kampus Serang', 'slug' => 'kampus-serang', 'description' => 'Deskripsi untuk Kampus Serang'],
        // ]);

        // // Seeder untuk Buildings (A, B, C di setiap Universitas)
        // $buildingNames = ['A', 'B', 'C'];

        // $universityIds = DB::table('universities')->pluck('id', 'slug');

        // foreach ($universityIds as $universitySlug => $universityId) {
        //     foreach ($buildingNames as $name) {
        //         // Insert ke tabel buildings
        //         $buildingId = DB::table('buildings')->insertGetId([
        //             'id' => md5(Carbon::now()->format('YmdHis') . $name), // ID hashed
        //             'building_name' => 'Gedung ' . $name,
        //             'slug' => 'gedung-' . strtolower($name) . '-u-' . $universitySlug,
        //             'university_id' => $universityId, // ID universitas
        //             'created_at' => now(),
        //             'updated_at' => now(),
        //         ]);

        //         // Insert ke tabel floors (1 - 10)
        //         for ($floor = 1; $floor <= 10; $floor++) {
        //             $floorId = DB::table('floors')->insertGetId([
        //                 'id' => md5(Carbon::now()->format('YmdHis') . $floor), // ID hashed
        //                 'floor_name' => 'Lantai ' . $floor,
        //                 'slug' => 'lantai-' . $floor . '-g-' . $buildingId,
        //                 'university_id' => $universityId, // ID universitas
        //                 'building_id' => $buildingId, // ID gedung
        //                 'created_at' => now(),
        //                 'updated_at' => now(),
        //             ]);

        //             // Insert ke tabel cameras (5 kamera per lantai)
        //             for ($camera = 1; $camera <= 5; $camera++) {
        //                 DB::table('cameras')->insert([
        //                     'id' => md5(Carbon::now()->format('YmdHis') . $camera), // ID hashed
        //                     'nama_kamera' => 'CAM ' . $camera . '-L' . $floor . '-G' . $buildingId,
        //                     'rtsp' => 'http://example.com/stream' . $camera,
        //                     'description' => 'Deskripsi Kamera ' . $camera,
        //                     'device_color' => ['Black', 'White', 'Gray'][array_rand(['Black', 'White', 'Gray'])],
        //                     'ip' => '192.168.' . rand(1, 255) . '.' . rand(1, 255),
        //                     'type' => ['CCTV', 'Surveillance'][array_rand(['CCTV', 'Surveillance'])],
        //                     'brand' => 'Brand ' . chr(65 + ($camera % 26)),
        //                     'version_model' => 'V' . rand(1, 5) . '.' . rand(0, 9),
        //                     'installation_date' => now()->subDays(rand(1, 365))->toDateString(),
        //                     'university_id' => $universityId, // ID universitas
        //                     'building_id' => $buildingId, // ID gedung
        //                     'floor_id' => $floorId, // ID lantai
        //                     'created_at' => now(),
        //                     'updated_at' => now(),
        //                 ]);
        //             }
        //         }
        //     }
        // }

    }
}
