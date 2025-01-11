<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Building extends Model
{
    use HasFactory;
    protected $primaryKey = 'id'; 
    public $incrementing = false; 
    protected $keyType = 'string'; 

    protected $table = 'buildings';

    protected $fillable = [
        'building',
    ];

    public function floors()
    {
        return $this->hasMany(Floor::class)->orderBy('floor_name', 'asc');
    }

    public function university()
{
    return $this->belongsTo(University::class, 'university_id');
}

}
