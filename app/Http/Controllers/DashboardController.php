<?php

namespace App\Http\Controllers;


use App\Models\BookBank;
use App\Models\DonorNotes;
use App\Models\DonorSubmissions;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('pages.dashboard.index', [
            'title' => 'Dashboard',
            'active' => 'dashboard',
            'donorNotes' => $this->donorNotes(),
            'donorSubmissions' => $this->donorSubmissions(),
            'stockPlasma' => $this->stockPlasma(),
            'totalRequest' => $this->requestPlasma(),
            'schedules' => $this->schedule(),
            'covidData' => $this->getCovid()
        ]);
    }

    public function Artikel()
    {
        return new ArtikelController();
    }

    public function stockPlasma()
    {
        $bookBank = BookBank::all();
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
            ->where('status_donor_submissions', '=', '2')
            ->sum('quantity_donor_submissions');
    }

    public function schedule()
    {
        $idDonators = Auth::check() ? Auth::id() : true;
        return DonorNotes::where('id_donators', '=', $idDonators)
            ->where('status_donor_notes', '=', '2')->get();
    }

    public function getCovid()
    {
        // $client = new Client;
        // $results = $client->request('GET', 'https://apicovid19indonesia-v2.vercel.app/api/indonesia/harian');

        // $array = json_decode($results->getBody()->getContents(), true);
        // $collection = collect($array);
        // return $collection;
    }

    public function home(){
        return view('home');
    }

    public function donorSubmissions()
    {
        $idDonators = Auth::check() ? Auth::id() : true;
        return DonorSubmissions::where('id_donators', '=', $idDonators)->get();
    }

    public function donorNotes()
    {
        $idDonators = Auth::check() ? Auth::id() : true;
        return DonorNotes::where('id_donators', '=', $idDonators)->get();
    }
}
