<?php

namespace App\Http\Controllers;

use App\Models\Building;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreBuildingRequest;
use App\Http\Requests\UpdateBuildingRequest;
use Symfony\Component\HttpFoundation\Request;

class BuildingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $buildings = Building::all();
        return view('building.index')->with(compact('buildings'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('building.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'building_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
        ]);

        $building = new Building();
            $building->building_name = $request->building_name;
            $building->slug = $request->slug;
        $building->save();

        return redirect()->route('dashboard')->with('success', 'Data gedung berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Building $building)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Building $building)
    {
        $building = Building::find($id);
        return view('building.edit')->with(compact('building'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request, Building $building)
    {
        $request->validate([
            'building_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
        ]);

        $building = Building::whereId($id)->first();
            $building->building_name = $request->building_name;
            $building->slug = $request->slug;
        $building->update();

        return redirect()->route('dashboard')->with('success', 'Data gedung berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id, Building $building)
    {
        $building = Building::find($id);
        $building->delete();
        return redirect()->route('dashboard')->with('success', 'Data gedung berhasil dihapus!');
    }
}
