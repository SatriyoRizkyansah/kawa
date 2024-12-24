<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CctvSeeder extends Seeder
{
    public function run()
    {
        DB::table('cameras')->insert([
            ['nama_kamera' => 'CAM 1', 'rtsp' => 'http://example.com/stream1', 'building_id' => '1', 'floor_id' => '1'],
            ['nama_kamera' => 'CAM 2', 'rtsp' => 'http://example.com/stream2', 'building_id' => '2', 'floor_id' => '2'],
        ]);
    }
    
}
