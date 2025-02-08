<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student_media extends Model
{
    use HasFactory;

    protected $table = 'student_media';

    public function student(){
        return $this->belongsTo(Student::class, 'student_id');
    }
}
