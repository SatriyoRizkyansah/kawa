<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

     public function violations()
    {
        return $this->hasMany(Violation::class, 'student_id');
    }

    public function academic_program()
    {
        return $this->belongsTo(Academic_program::class, 'academic_program_id');
    }

    public function student_media()
    {
        return $this->hasMany(Student_media::class, 'student_id');
    }
}
