<?php

namespace App\Http\Controllers;

use App\Models\Floor;
use App\Models\Camera;
use App\Models\Building;
use App\Models\University;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Crypt;

class CameraController extends Controller
{
    public function index()
    {
        $cameras = Camera::all();
        return view('manage-cameras.camera.index')->with(compact('cameras'));
    }

    public function create(){
        $buildings = Building::all();
        $floors = Floor::all();
        $universities = University::all();
        // dd($buildings);
        return view('manage-cameras.camera.create')->with(compact('buildings', 'floors', 'universities'));
    }

        public function getGedung($universityId)
    {
        $gedung = Building::where('university_id', $universityId)
        ->orderBy('building_name', 'asc')
        ->get();

        return response()->json($gedung);
    }

    public function getLantai($gedungId)
    {
        $lantai = Floor::where('building_id', $gedungId)
        ->orderBy('floor_name', 'asc')
        ->get();
        
        return response()->json($lantai);
    }


    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required|string|max:255',
            'nama_kamera' => 'required|string|max:255',
            'rtsp' => 'required|url|max:255',
            'hls' => 'required|url|max:255',
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
            $camera->id = md5($request->id);
            $camera->nama_kamera = $request->nama_kamera;
            $camera->rtsp = $request->rtsp;
            $camera->hls = $request->hls;
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

        return redirect()->route('camera')->with('success', 'Kamera berhasil ditambahkan!');
    }

        public function edit($id)
    {
        $camera = Camera::findOrFail($id);
        $universities = University::all();
        $buildings = Building::where('university_id', $camera->university_id)->get();
        $floors = Floor::where('building_id', $camera->building_id)->get();

        return view('manage-cameras.camera.edit', compact('camera', 'universities', 'buildings', 'floors'));
    }


        public function update(Request $request, $id)
    {

        $request->validate([
            'nama_kamera' => 'required|string|max:255',
            'rtsp' => 'required|url|max:255',
            'hls' => 'required|url|max:255',
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

        $camera = Camera::findOrFail($id);
        $camera->nama_kamera = $request->nama_kamera;
        $camera->rtsp = $request->rtsp;
        $camera->hls = $request->hls;
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

        return redirect()->route('camera')->with('success', 'Data kamera berhasil diperbarui!');
    }

    

    public function destroy($id){
        $camera = Camera::find($id);
        $camera->delete();
        return redirect()->route('camera')->with('success', 'CCTV berhasil dihapus!');
    }
}
