<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Camera extends Model
{
    use HasFactory;
    protected $primaryKey = 'id'; 
    public $incrementing = false; 
    protected $keyType = 'string'; 

    // Tentukan tabel yang akan digunakan (jika berbeda dengan plural nama model)
    protected $table = 'cameras';

    // Tentukan kolom yang bisa diisi (fillable)
    protected $fillable = [
        'id', 'ip', 'nama_kamera', 'rtsp', 'hls', 'description', 'device_color', 'type', 'brand', 'version_model', 'installation_date', 'university_id', 'building_id', 'floor_id',
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

    public function violations()
    {
        return $this->hasMany(Violation::class, 'camera_id');
    }
}
