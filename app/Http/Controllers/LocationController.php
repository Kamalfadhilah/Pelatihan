<?php

namespace App\Http\Controllers;


use App\Models\BookBank;

class LocationController extends Controller
{
    public function index()
    {
        $bookBank = BookBank::all();
        if (request('search')) {
            $bookBank = BookBank::whereRelation('institutions', 'name_institutions', 'like', '%' . request('search') . '%')
                ->orWhereRelation('institutions', 'address_institutions', 'like', '%' . request('search') . '%')
                ->get();
        }

        return view('pages.location.index', [
            'title' => 'Lokasi',
            'active' => 'location',
            'datas' => $bookBank
        ]);
    }
}
