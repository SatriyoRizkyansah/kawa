<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class FloorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('floors')->insert([
            ['floors_name' => 'LT 1'],
            ['floors_name' => 'LT 2'],
            ['floors_name' => 'LT 3'],
        ]);
    }
}
