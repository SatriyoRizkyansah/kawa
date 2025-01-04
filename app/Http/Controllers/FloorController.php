<?php

namespace App\Http\Controllers;

use App\Models\Floor;
use App\Models\Building;
use App\Models\University;
use Illuminate\Routing\Controller;
use App\Http\Requests\StoreFloorRequest;
use App\Http\Requests\UpdateFloorRequest;
use Symfony\Component\HttpFoundation\Request;

class FloorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $floors = Floor::all(); 
        return view('manage.floor.index')->with(compact('floors'));
    }

    public function showByBuilding($id)
    {
        $floors = Floor::where('building_id', $id)->get(); 
        return view('manage.floor.index')->with(compact('floors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $universities = University::all();
        $buildings = Building::all();
        return view('manage.floor.create')->with(compact('buildings', 'universities'));
    }

      public function getGedung($universityId)
    {
        $gedung = Building::where('university_id', $universityId)->get();
        return response()->json($gedung);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'floor_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'university' => 'required|exists:universities,id',
            'building' => 'required|exists:buildings,id',
        ]);

        $floor = new Floor();
            $floor->floor_name = $request->floor_name;
            $floor->slug = $request->slug;
            $floor->university_id = $request->university;
            $floor->building_id = $request->building;

        // dd($floor);
        $floor->save();

        return redirect()->route('floor')->with('success', 'Data lantai berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Floor $floor)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, Floor $floor)
    {
        $floor = Floor::find($id);
        $buildings = Building::all();
        return view('manage.floor.edit')->with(compact('floor', 'buildings'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request, Floor $floor)
    {
        $request->validate([
            'floor_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'building' => 'required|exists:buildings,id',
        ]);

        $floor = Floor::whereId($id)->first();
            $floor->floor_name = $request->floor_name;
            $floor->slug = $request->slug;
            $floor->building_id = $request->building;
        $floor->update();

        return redirect()->route('floor')->with('success', 'Data lantai berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id, Floor $floor)
    {
        $floor = Floor::find($id);
        $floor->delete();
        return redirect()->route('floor')->with('success', 'Data lantai berhasil dihapus!');
    }
}
