<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Camera extends Model
{
    use HasFactory;

    // Tentukan tabel yang akan digunakan (jika berbeda dengan plural nama model)
    protected $table = 'cameras';

    // Tentukan kolom yang bisa diisi (fillable)
    protected $fillable = [
        'nama_kamera', 'rtsp', 'gedung', 'lantai',
    ];

      public function floor()
    {
        return $this->belongsTo(Floor::class);
    }

    public function building()
    {
        return $this->belongsTo(Building::class);
    }

      public function university()
    {
        return $this->belongsTo(University::class);
    }
}
