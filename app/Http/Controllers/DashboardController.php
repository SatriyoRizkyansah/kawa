<?php

namespace App\Http\Controllers;

use App\Models\Floor;
use App\Models\Camera;
use App\Models\Building;
use App\Models\University;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        $universities = University::all();
        return view('dashboard.index', compact('universities'));
    }

    public function university_detail($id){
        $university = University::find($id);
        $buildings = Building::where('university_id', $id)->get();
        return view('dashboard.university_detail', compact('university','buildings'));
    }

    public function cameras($id){
        $cameras = Camera::where('building_id', $id)->get();
        return view('dashboard.cameras', compact('cameras'));
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
