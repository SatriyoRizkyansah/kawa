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
            $table->string('ip');
            $table->string('nama_kamera');
            $table->string('rtsp')->nullable();
            $table->string('hls')->nullable();
            $table->string('description')->nullable();
            $table->string('device_color')->nullable();
            $table->string('type')->nullable();
            $table->string('brand')->nullable();
            $table->string('version_model')->nullable();
            $table->date('installation_date')->nullable();

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
