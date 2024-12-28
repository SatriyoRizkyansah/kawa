<?php

namespace App\Http\Controllers;

use App\Models\Camera;
use App\Models\Building;
use App\Models\Floor;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class DashboardController extends Controller
{
    public function index()
    {
        // $datas = Camera::all();
        return view('dashboard');
    }

    public function beranda()
    {
        $datas = Camera::all();
        return view('beranda', compact('datas'));
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
