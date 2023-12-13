<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookBank extends Model
{
    use HasFactory;

    protected $table = 'book_bank';
    protected $primaryKey = 'id_book_bank';
    public $incrementing = false;
    protected $keyType = 'string';
    protected $fillable = ['id_book_bank', 'id_institutions', 'Novel', 'Komik', 'Biografi', 'Ilmiah', 'Kamus', 'Atlas', 'Majalah', 'Dongeng'];

    public function institutions()
    {
        return $this->belongsTo(Institutions::class, 'id_institutions');
    }

}
