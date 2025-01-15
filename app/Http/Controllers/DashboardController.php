<?php

namespace App\Http\Controllers;

use Hashids;
use App\Models\Floor;
use App\Models\Camera;
use App\Models\Building;
use App\Models\Violation;
use App\Models\University;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Crypt;


class DashboardController extends Controller
{
    public function index()
    {
        $universities = University::all();
        return view('dashboard.index', compact('universities'));
    }

    public function university_detail($id)
    {
        $university = University::findOrFail($id);
        $buildings = Building::where('university_id', $id)
        ->orderBy('building_name', 'asc')
        ->get();


        return view('dashboard.university_detail', compact('university', 'buildings'));
    }

    public function cameras_building($id){

        $cameras = Camera::where('building_id', $id)->get();
        $title = 'CCTV ' . $cameras->first()->building->building_name . ' - ' . $cameras->first()->building->university->university_name;
        return view('dashboard.cameras', compact('cameras', 'title'));

    }

    public function cameras_floor($id){
        $cameras = Camera::where('floor_id', $id)->get();
        $title = 'CCTV ' . $cameras->first()->building->building_name . ' - ' . $cameras->first()->building->university->university_name . ' - ' . $cameras->first()->floor->floor_name;

        return view('dashboard.cameras', compact('cameras', 'title'));
    }

    public function camera_detail($id){
        $camera = Camera::findOrFail($id);
        $violations = Violation::where('camera_id', $id)->get();
        return view('dashboard.camera_detail', compact('camera', 'violations'));
    }


    public function viewKampusAll(Request $request, $id)
{
    // Ambil semua gedung berdasarkan universitas
    $buildings = Building::where('university_id', $id)->get();

    // Ambil semua lantai jika gedung dipilih
    $floors = Floor::whereIn('building_id', $buildings->pluck('id'))->get();

    // Filter kamera berdasarkan gedung dan lantai
    $cameras = Camera::where('university_id', $id);

    if ($request->has('building_id')) {
        $cameras->where('building_id', $request->building_id);
        $floors = Floor::where('building_id', $request->building_id)->get();
    }

    if ($request->has('floor_id')) {
        $cameras->where('floor_id', $request->floor_id);
    }

    $cameras = $cameras->get();

    $university = University::findOrFail($id);

    return view('kampus.index', compact('cameras', 'buildings', 'floors', 'university'));
}



    public function beranda()
    {
        $datas = Camera::all();
        return view('beranda.index', compact('datas'));
    }

    public function showByBuilding($id)
{
    $datas = Camera::where('building_id', $id)->get();
    $building = Building::findOrFail($id);

    return view('index-dashboard', compact('datas', 'building'));
}

    public function showByFloor($id)
{
    $datas = Camera::where('floor_id', $id)->get();
    $floor = Floor::findOrFail($id);

    return view('index-dashboard', compact('datas', 'floor'));
}

    public function showUserInformation()
{
    return view('user_information.index');
}
    

}
