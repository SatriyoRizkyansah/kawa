<?php

namespace App\Http\Controllers;

use App\Models\Floor;
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
        return view('floor.index')->with(compact('floors'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('floor.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'floor_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
        ]);

        $floor = new Floor();
            $floor->floor_name = $request->floor_name;
            $floor->slug = $request->slug;
        $floor->save();

        return redirect()->route('dashboard')->with('success', 'Data gedung berhasil ditambahkan!');
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
        return view('floor.edit')->with(compact('floor'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request, Floor $floor)
    {
        $request->validate([
            'floor_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
        ]);

        $floor = Floor::whereId($id)->first();
            $floor->floor_name = $request->floor_name;
            $floor->slug = $request->slug;
        $floor->update();

        return redirect()->route('dashboard')->with('success', 'Data lantai berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id, Floor $floor)
    {
        $floor = Floor::find($id);
        $floor->delete();
        return redirect()->route('dashboard')->with('success', 'Data lantai berhasil dihapus!');
    }
}
