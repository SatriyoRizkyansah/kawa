<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCamerasTable extends Migration
{
    public function up()
    {
        Schema::create('cameras', function (Blueprint $table) {
            $table->id();
            $table->string('nama_kamera');
            $table->string('rtsp');
            $table->string('description');
            $table->string('device_color');
            $table->string('ip');
            $table->string('type');
            $table->string('brand');
            $table->string('version_model');
            $table->date('installation_date');

            $table->foreignId('university_id')->constrained(
               table: 'universities', 
               indexName: 'university_camera_id'
            );

            $table->foreignId('building_id')->constrained(
               table: 'buildings', 
               indexName: 'bulding_camera_id'
            );

            $table->foreignId('floor_id')->constrained(
               table: 'floors', 
               indexName: 'floor'
            );

            // $table->string('lantai');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('cameras');
    }
}
