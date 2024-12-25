<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

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
    }
}
