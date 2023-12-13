<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;

    protected $table = 'artikel';
    protected $primaryKey = 'id_artikel';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['id_artikel', 'id_institutions', 'name_artikel', 'desc_artikel', 'thumbnail_artikel'];

    protected $with = ['institutions'];

    public function institutions()
    {
        return $this->belongsTo(Institutions::class, 'id_institutions');
    }
}