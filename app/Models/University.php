<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Concerns\HasUuids;


class University extends Model
{
    use HasUuids;
    use HasFactory;

    public $incrementing = false;
    protected $keyType = 'string';

    protected $table = 'universities';

    protected $fillable = [
        'university_name', 'slug', 'description',
    ];

    
}
