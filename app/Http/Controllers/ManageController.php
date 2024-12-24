<?php

namespace App\Http\Controllers;

use App\Models\Camera;
use App\Models\Building;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use App\Models\Cctv; // Menggunakan model Cctv
use App\Models\Floor;

class ManageController extends Controller
{
    public function index()
    {
        $cameras = Camera::all();
        // $buildings = Building::all();
        // $floors = Floor::all(); 

        // $groupedCameras = $cctvs->groupBy('gedung')->map(function ($group) {
        //     return $group->groupBy('lantai');
        // });

        return view('manage.index')->with(compact('cameras'));
    }

    public function create(){
        $buildings = Building::all();
        $floors = Floor::all();

        // dd($buildings);
        return view('manage.create')->with(compact('buildings', 'floors'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_kamera' => 'required|string|max:255',
            'rtsp' => 'required|string|max:255',
            'gedung' => 'required|string|max:255',
            'lantai' => 'required|integer|min:1',
        ]);

        $camera = new Camera();
            $camera->nama_kamera = $request->nama_kamera;
            $camera->rtsp = $request->rtsp;
            $camera->building_id = $request->gedung;
            $camera->floor_id = $request->lantai;
        $camera->save();

        // dd($camera);

        return redirect()->route('dashboard')->with('success', 'CCTV berhasil ditambahkan!');
    }

    public function edit($id, Request $request){
        $camera = Camera::find($id);
        $buildings = Building::all();
        $floors = Floor::all();
        return view('manage.edit')->with(compact('camera','buildings', 'floors'));
    }

    public function update($id, Request $request){
        $request->validate([
            'nama_kamera' => 'required|string|max:255',
            'rtsp' => 'required|string|max:255',
            'gedung' => 'required|string|max:255',
            'lantai' => 'required|integer|min:1',
        ]);

        $camera = Camera::whereId($id)->first();
            $camera->nama_kamera = $request->nama_kamera;
            $camera->rtsp = $request->rtsp;
            $camera->building_id = $request->gedung;
            $camera->floor_id = $request->lantai;
        $camera->update();

        // dd($camera);

        return redirect()->route('dashboard')->with('success', 'CCTV berhasil diupdate!');
    }

    

    public function destroy($id){
        $camera = Camera::find($id);
        $camera->delete();
        return redirect()->route('dashboard')->with('success', 'CCTV berhasil dihapus!');
    }
}
