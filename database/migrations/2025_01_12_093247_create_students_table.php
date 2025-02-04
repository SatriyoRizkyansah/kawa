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
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('nim');
            $table->string('name');
            $table->string('img')->nullable();
            $table->date('birth_date');
            $table->string('gender')->nullable();
            $table->unsignedBigInteger('academic_program_id');
            $table->foreign('academic_program_id')->references('id')->on('academic_programs')->onDelete('cascade');
            // $table->string('faculty'); 
            $table->string('reg');
            $table->string('class');
            $table->string('semester')->nullable();
            $table->string('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
