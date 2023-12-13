<?php

namespace App\Http\Controllers;

use App\Models\Question;
use Illuminate\Http\Request;


class FaqController extends Controller
{
    public function index(){
        $daftarPertanyaan = Question::all();
        return view('pages.faq.index', [
            'title' => 'FAQ',
            'active' => 'faq',
        ], compact('daftarPertanyaan'));
    }

    public function adminFAQ(){
        $daftarPertanyaan = Question::all();
        return view('pages.faq.adminfaq', [
            'title' => 'FAQ',
            'active' => 'faq',
        ], compact('daftarPertanyaan'));
    }

    public function tambahFAQ(){
        return view('pages.faq.tambahFAQ', [
            'title' => 'tambah faq',
            'active' => 'tambah faq',
        ]);
    }
    public function insertFAQ(Request $request){
        $insertFAQ = Question::create([
            'nama_faq' => $request->nama_faq,
            'isi_faq' => $request->isi_faq,
        ]);
        if($insertFAQ){
            return redirect('/adminFAQ');
        } 
    }

    public function deleteFAQ($id){
        try {
            $data = Question::find($id);
            $data->delete();
            return redirect('/adminFAQ')->with('info', "FAQ berhasil dihapus");
        } catch (Exception $e) {
            return redirect('/adminFAQ')->with('info', "FAQ gagal dihapus");
        }
    }
    public function editFAQ($id){
        $editFAQ = Question::find($id);
        return view('pages.faq.editFAQ', [
            'title' => 'edit faq',
            'active' => 'edit faq',
        ], compact('editFAQ'));
    }
    public function updateFAQ(Request $request, $id){
        $editFAQ = Question::find($id)->update([
            'nama_faq' => $request->nama_faq, 
            'isi_faq' => $request->isi_faq, 
        ]);
        if($editFAQ){
            return redirect('/adminFAQ');
        }
    }
}