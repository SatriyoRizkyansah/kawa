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

        public function getGedung($universityId)
    {
        $gedung = Building::where('university_id', $universityId)->get();
        return response()->json($gedung);
    }

    public function getLantai($gedungId)
    {
        $lantai = Floor::where('building_id', $gedungId)->get();
        return response()->json($lantai);
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

        return redirect()->route('camera')->with('success', 'CCTV berhasil ditambahkan!');
    }

        public function edit($encryptedId)
    {
        try {
            $decrypted = Crypt::decryptString($encryptedId);
            list($id, $timestamp) = explode('|', $decrypted);

        $camera = Camera::findOrFail($id);

        $universities = University::all();
        $buildings = Building::where('university_id', $camera->university_id)->get();
        $floors = Floor::where('building_id', $camera->building_id)->get();

        return view('manage.camera.edit', compact('camera', 'universities', 'buildings', 'floors'));
        } catch (\Exception $e) {
            abort(404);
        }


    }


        public function update(Request $request, $encryptedId)
    {

        try {
            $decrypted = Crypt::decryptString($encryptedId);
            list($id, $timestamp) = explode('|', $decrypted);

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

        $camera = Camera::findOrFail($id);
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

        return redirect()->route('camera')->with('success', 'Data kamera berhasil diperbarui!');
        } catch (\Exception $e) {
            abort(404);
        }


    }

    

    public function destroy($id){
        $camera = Camera::find($id);
        $camera->delete();
        return redirect()->route('camera')->with('success', 'CCTV berhasil dihapus!');
    }
}
