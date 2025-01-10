<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCamerasTable extends Migration
{
    public function up()
    {
        Schema::create('cameras', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('nama_kamera');
            $table->string('rtsp');
            $table->string('description');
            $table->string('device_color');
            $table->string('ip');
            $table->string('type');
            $table->string('brand');
            $table->string('version_model');
            $table->date('installation_date');

            $table->string('university_id');
            $table->foreign('university_id')->references('id')->on('universities')->onDelete('cascade');

            $table->string('building_id');
            $table->foreign('building_id')->references('id')->on('buildings')->onDelete('cascade');

            $table->string('floor_id');
            $table->foreign('floor_id')->references('id')->on('floors')->onDelete('cascade');

            // $table->string('lantai');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('cameras');
    }
}
