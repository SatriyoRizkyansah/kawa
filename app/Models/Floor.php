<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Floor extends Model
{
    use HasFactory;

    protected $table = 'floors';

    protected $fillable = [
        'floor',
    ];

    public function building()
    {
        return $this->belongsTo(Building::class);
    }

    public function cameras()
    {
        return $this->hasMany(Camera::class);
    }



}
