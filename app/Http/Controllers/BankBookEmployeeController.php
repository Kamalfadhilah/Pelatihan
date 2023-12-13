<?php

namespace App\Http\Controllers;

use App\Models\BookBank;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BankBookEmployeeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('pages.bank.index', [
            'title' => 'Bank Darah',
            'active' => 'bank',
            'stockPlasma' => $this->stockPlasma(),
            'totalRequest' => $this->requestPlasma(),
            'bookBank' => $this->bookBank()
        ]);
    }

    public function stockPlasma()
    {
        $bookBank = BookBank::where('id_institutions', '=', Auth::user()->id_institutions);
        $ap = $bookBank->sum('Novel');
        $an = $bookBank->sum('Komik');
        $abp = $bookBank->sum('Kamus');
        $abn = $bookBank->sum('Atlas');
        $bp = $bookBank->sum('Biografi');
        $bn = $bookBank->sum('Ilmiah');
        $op = $bookBank->sum('Majalah');
        $on = $bookBank->sum('Dongeng');

        return $ap + $an + $abp + $abn + $bp + $bn + $op + $on;
    }

    public function requestPlasma()
    {
        return DB::table('donor_submissions')
            ->whereNested(function ($query) {
                $query
                    ->where('status_donor_submissions', '=', '2')
                    ->where('id_institutions', '=', Auth::user()->id_institutions);
            })
            ->sum('quantity_donor_submissions');
    }

    public function bookBank()
    {
        return BookBank::where('id_institutions', '=', Auth::user()->id_institutions)->get();
    }

    public function updateStock(Request $request)
    {
        $validateData = $request->validate([
            'Novel' => 'required',
            'Komik' => 'required',
            'Kamus' => 'required',
            'Atlas' => 'required',
            'Biografi' => 'required',
            'Ilmiah' => 'required',
            'Majalah' => 'required',
            'Dongeng' => 'required',
            'modified_by' => 'required',
        ]);

        BookBank::where('id_institutions', '=', Auth::user()->id_institutions)->update($validateData);

        return redirect('/_bank')->with('updateSuccess', 'Berhasil Memperbarui Bank Darah');
    }
}
