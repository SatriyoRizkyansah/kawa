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
        Schema::create('evidences', function (Blueprint $table) {
        $table->id(); 
        $table->unsignedBigInteger('violation_id'); 
        $table->foreign('violation_id')->references('id')->on('violations')->onDelete('cascade');
        $table->string('file_path'); 
        $table->enum('file_type', ['image', 'video']);
        $table->string('description')->nullable(); 
        $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('evidence');
    }
};
