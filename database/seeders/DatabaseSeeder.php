<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str; 

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        // DB::table('universities')->insert([
        //     ['university_name' => 'Universitas A',
        //         'slug' => 'universitas-a'],
        //     ['university_name' => 'Universitas B',
        //         'slug' => 'universitas-b'],
        // ]);

        // DB::table('buildings')->insert([
        //     ['building_name' => 'A',
        //         'slug' => 'a'],
        //     ['building_name' => 'B',
        //         'slug' => 'b'],
        //     ['building_name' => 'C',
        //         'slug' => 'c'],
        // ]);

        // DB::table('floors')->insert([
        //     ['floor_name' => 'Lantai 1',
        //         'slug' => 'lantai-1'],
        //     ['floor_name' => 'Lantai 2',
        //         'slug' => 'lantai-2'],
        //     ['floor_name' => 'Lantai 3',
        //         'slug' => 'lantai-3'],
        // ]);

        // DB::table('cameras')->insert([
        //     ['nama_kamera' => 'CAM 1', 'rtsp' => 'http://example.com/stream1', 'building_id' => '1', 'floor_id' => '1'],
        //     ['nama_kamera' => 'CAM 2', 'rtsp' => 'http://example.com/stream2', 'building_id' => '2', 'floor_id' => '2'],
        // ]);

        // Seeder untuk Universities (Maksimal 3)
        for ($i = 1; $i <= 3; $i++) {
            DB::table('universities')->insert([
                'university_name' => 'Universitas ' . Str::upper(Str::random(3)),
                'slug' => 'universitas-' . $i,
                'description' => 'Deskripsi untuk Universitas ' . $i,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Seeder untuk Buildings (Maksimal 10)
        for ($i = 1; $i <= 10; $i++) {
            DB::table('buildings')->insert([
                'building_name' => 'Gedung ' . chr(64 + $i), // A, B, C, ..., J
                'slug' => 'gedung-' . $i,
                'university_id' => rand(1, 3), // Hanya memilih dari universitas yang sudah ada
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Seeder untuk Floors (20 Data, tetapi hanya untuk gedung yang ada)
        for ($i = 1; $i <= 20; $i++) {
            DB::table('floors')->insert([
                'floor_name' => 'Lantai ' . $i,
                'slug' => 'lantai-' . $i,
                'building_id' => rand(1, 10), // Hanya gedung yang ada
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Seeder untuk Cameras (20 Data, dengan relasi yang sesuai)
        for ($i = 1; $i <= 20; $i++) {
            DB::table('cameras')->insert([
                'nama_kamera' => 'CAM ' . $i,
                'rtsp' => 'http://example.com/stream' . $i,
                'description' => 'Deskripsi Kamera ' . $i,
                'device_color' => ['Black', 'White', 'Gray'][array_rand(['Black', 'White', 'Gray'])],
                'ip' => '192.168.' . rand(1, 255) . '.' . rand(1, 255),
                'type' => ['CCTV', 'Surveillance'][array_rand(['CCTV', 'Surveillance'])],
                'brand' => 'Brand ' . chr(65 + ($i % 26)), // Brand A, B, C...
                'version_model' => 'V' . rand(1, 5) . '.' . rand(0, 9),
                'installation_date' => now()->subDays(rand(1, 365))->toDateString(),
                'university_id' => rand(1, 3), // Hanya universitas yang ada
                'building_id' => rand(1, 10), // Hanya gedung yang ada
                'floor_id' => rand(1, 20), // Hanya lantai yang ada
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
