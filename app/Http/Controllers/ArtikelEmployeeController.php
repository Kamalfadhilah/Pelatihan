<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use Carbon\Carbon;
use Exception;
use File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Ramsey\Uuid\Uuid;
use Yajra\DataTables\DataTables;

class ArtikelEmployeeController extends Controller
{

    public function index()
    {
        return view('pages.artikel.admin', [
            'title' => 'Acara',
            'active' => 'artikel',
        ]);
    }

    public function data()
    {
        $model = Artikel::where("id_institutions", "=", Auth::user()->id_institutions)->get();

        return DataTables::of($model)
            ->addIndexColumn()
            ->addColumn('thumbnail_artikel', function ($model) {
                return '<img src="' . $model->thumbnail_artikel . '" height="100px">';
            })
            ->addColumn('modified_by', function ($model) {
                if ($model->modified_by == null) {
                    return "-";
                }
                return $model->modified_by;
            })
            ->addColumn('action', function ($model) {
                return (string)view('pages.artikel.admin_action', ['model' => $model]);
            })
            ->rawColumns(['thumbnail_artikel', 'action'])
            ->toJson();
    }

    public function create()
    {
        return view('pages.artikel.admin_create', [
            'title' => 'Acara',
            'active' => 'artikel',
        ]);
    }


    public function store(Request $request)
    {
        $validateData = $request->validate([
            'name_artikel' => 'required|max:255',
            'desc_artikel' => 'required',
            'thumbnail_artikel' => 'mimes:jpeg,png,jpg,gif,svg',
        ]);

        if ($request->thumbnail_artikel != null) {
            $thumbnailFile = $request->file('thumbnail_artikel');

            $uuidShorten = str_replace('-', '', Auth::user()->id_institutions);
            $thumbnailName = time() . "_" . $uuidShorten . "_" . $thumbnailFile->getClientOriginalName();

            $thumbnailPath = "upload/$uuidShorten/thumbnail";
            $thumbnailFile->move($thumbnailPath, $thumbnailName);
            $validateData['thumbnail_artikel'] = "/$thumbnailPath/$thumbnailName";
        }

        $validateData['id_artikel'] = Uuid::uuid4()->toString() . "\n";
        $validateData['id_institutions'] = Auth::user()->id_institutions;

        Artikel::create($validateData);

        return redirect('/_artikel')->with('info', 'Acara berhasil ditambahkan');
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $data = Artikel::find($id);
        return view('pages.artikel.admin_edit', [
            'title' => 'Acara',
            'active' => 'artikel',
            'data' => $data
        ]);
    }


    public function update(Request $request, $id)
    {
        $validateData = $request->validate([
            'name_artikel' => 'required|max:255',
            'desc_artikel' => 'required',
            'thumbnail_artikel' => 'mimes:jpeg,png,jpg,gif,svg',
            'modified_by' => 'required',
        ]);

        if ($request->thumbnail_artikel != null) {

            $data = Artikel::findOrFail($id);
            if (File::exists(public_path($data->thumbnail_artikel))) {
                File::delete(public_path($data->thumbnail_artikel));
            }

            $thumbnailFile = $request->file('thumbnail_artikel');

            $uuidShorten = str_replace('-', '', Auth::user()->id_institutions);
            $thumbnailName = time() . "_" . $uuidShorten . "_" . $thumbnailFile->getClientOriginalName();

            $thumbnailPath = "upload/$uuidShorten/thumbnail";
            $thumbnailFile->move($thumbnailPath, $thumbnailName);
            $validateData['thumbnail_artikel'] = "/$thumbnailPath/$thumbnailName";
        }

        Artikel::where('id_artikel', '=', $id)->update($validateData);

        return redirect('/_artikel')->with('info', "Acara berhasil diupdate");
    }

    public function destroy($id)
    {
        try {
            $data = Artikel::findOrFail($id);
            $data->delete();
            if (File::exists(public_path($data->thumbnail_artikel))) {
                File::delete(public_path($data->thumbnail_artikel));
            }
            return redirect('/_artikel')->with('info', "Acara berhasil dihapus");
        } catch (Exception $e) {
            return redirect('/_artikel')->with('info', "Acara gagal dihapus");
        }
    }
}
