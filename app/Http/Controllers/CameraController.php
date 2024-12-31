<?php

namespace App\Http\Controllers;

use App\Models\Floor;
use App\Models\Camera;
use App\Models\Building;
use App\Models\University;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class CameraController extends Controller
{
    public function index()
    {
        $cameras = Camera::all();
        // $buildings = Building::all();
        // $floors = Floor::all(); 

        // $groupedCameras = $cctvs->groupBy('gedung')->map(function ($group) {
        //     return $group->groupBy('lantai');
        // });

        return view('manage.camera.index')->with(compact('cameras'));
    }

    public function create(){
        $buildings = Building::all();
        $floors = Floor::all();
        $universities = University::all();

        // dd($buildings);
        return view('manage.camera.create')->with(compact('buildings', 'floors', 'universities'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_kamera' => 'required|string|max:255',
            'rtsp' => 'required|url|max:255',
            'description' => 'required|string|max:255',
            'device_color' => 'required|string|max:255',
            'ip' => 'required|string|max:255',
            'type' => 'required|string|max:255',
            'brand' => 'required|string|max:255',
            'version_model' => 'required|string|max:255',
            'installation_date' => 'required|date',
            'university' => 'required|exists:universities,id',
            'gedung' => 'required|exists:buildings,id',
            'lantai' => 'required|exists:floors,id',
        ]);


        $camera = new Camera();
            $camera->nama_kamera = $request->nama_kamera;
            $camera->rtsp = $request->rtsp;
            $camera->description = $request->description;
            $camera->device_color = $request->device_color;
            $camera->ip = $request->ip;
            $camera->type = $request->type;
            $camera->brand = $request->brand;
            $camera->version_model = $request->version_model;
            $camera->installation_date = $request->installation_date;
            $camera->university_id = $request->university;
            $camera->building_id = $request->gedung;
            $camera->floor_id = $request->lantai;
        $camera->save();


        // dd($camera);

        return redirect()->route('dashboard')->with('success', 'CCTV berhasil ditambahkan!');
    }

    public function edit($id, Request $request){
        $camera = Camera::find($id);
        $buildings = Building::all();
        $universities = University::all();
        $floors = Floor::all();
        return view('manage.camera.edit')->with(compact('camera','buildings', 'floors', 'universities'));
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
