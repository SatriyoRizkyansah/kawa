<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // Seeder untuk User
        User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        // Seeder untuk Universities
        $universities = [];
        $universityIds = [];
        $universityNames = ['Kampus Pusat', 'Kampus Viktor', 'Kampus Witana', 'Kampus Serang'];
        foreach ($universityNames as $name) {
            $uuid = (string) Str::uuid();
            $universities[] = [
                'id' => $uuid,
                'university_name' => $name,
                'slug' => strtolower(str_replace(' ', '-', $name)),
                'description' => 'Deskripsi untuk ' . $name,
                'created_at' => now(),
                'updated_at' => now(),
            ];
            $universityIds[] = $uuid;
        }
        DB::table('universities')->insert($universities);

        // Seeder untuk Buildings
        $buildingNames = ['A', 'B', 'C'];
        $buildings = [];
        $floors = [];
        $cameras = [];

        foreach ($universityIds as $universityIndex => $universityId) {
            foreach ($buildingNames as $name) {
                $buildingUuid = (string) Str::uuid();
                $buildings[] = [
                    'id' => $buildingUuid,
                    'building_name' => 'Gedung ' . $name,
                    'slug' => 'gedung-' . strtolower($name) . '-u' . ($universityIndex + 1),
                    'university_id' => $universityId,
                    'created_at' => now(),
                    'updated_at' => now(),
                ];

                // Seeder untuk Floors
                for ($floor = 1; $floor <= 10; $floor++) {
                    $floorUuid = (string) Str::uuid();
                    $floors[] = [
                        'id' => $floorUuid,
                        'floor_name' => 'Lantai ' . $floor,
                        'slug' => 'lantai-' . $floor . '-g-' . strtolower($name),
                        'university_id' => $universityId,
                        'building_id' => $buildingUuid,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ];

                    // Seeder untuk Cameras
                    for ($camera = 1; $camera <= 5; $camera++) {
                        $cameras[] = [
                            'id' => (string) Str::uuid(),
                            'nama_kamera' => 'CAM ' . $camera . '-L' . $floor . '-G' . strtolower($name),
                            'rtsp' => 'http://example.com/stream' . $camera,
                            'description' => 'Deskripsi Kamera ' . $camera,
                            'device_color' => ['Black', 'White', 'Gray'][array_rand(['Black', 'White', 'Gray'])],
                            'ip' => '192.168.' . rand(1, 255) . '.' . rand(1, 255),
                            'type' => ['CCTV', 'Surveillance'][array_rand(['CCTV', 'Surveillance'])],
                            'brand' => 'Brand ' . chr(65 + ($camera % 26)),
                            'version_model' => 'V' . rand(1, 5) . '.' . rand(0, 9),
                            'installation_date' => now()->subDays(rand(1, 365))->toDateString(),
                            'university_id' => $universityId,
                            'building_id' => $buildingUuid,
                            'floor_id' => $floorUuid,
                            'created_at' => now(),
                            'updated_at' => now(),
                        ];
                    }
                }
            }
        }

        // Insert Data
        DB::table('buildings')->insert($buildings);
        DB::table('floors')->insert($floors);
        DB::table('cameras')->insert($cameras);
    }
}
