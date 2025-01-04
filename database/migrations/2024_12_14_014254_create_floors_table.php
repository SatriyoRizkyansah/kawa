<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('floors', function (Blueprint $table) {
            $table->id();
            $table->string('floor_name');
            $table->string('slug');

            $table->foreignId('university_id')->constrained(
               table: 'universities', 
               indexName: 'university_id'
            );

            $table->foreignId('building_id')->constrained(
               table: 'buildings', 
               indexName: 'bulding'
            );

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('floors');
    }
};
