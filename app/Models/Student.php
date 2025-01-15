<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $primaryKey = 'id'; 
    public $incrementing = false; 
    protected $keyType = 'string';

     public function violations()
    {
        return $this->hasMany(Violation::class, 'student_id');
    }
}
