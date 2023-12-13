<?php

namespace App\Http\Controllers;


use App\Models\Artikel;

class ArtikelController extends Controller
{
    public function index()
    {
        $Artikel = Artikel::all();
        return view('pages.artikel.index', [
            'title' => 'Artikel',
            'active' => 'artikel',
            'datas' => $Artikel,
        ]);
    }
}
