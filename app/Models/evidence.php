<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class evidence extends Model
{
    use HasFactory;
    protected $primaryKey = 'id'; 
    public $incrementing = false; 
    protected $keyType = 'string'; 

    protected $fillable = ['violation_id', 'file_path', 'file_type', 'description'];

    public function violation()
    {
        return $this->belongsTo(Violation::class);
    }
}
