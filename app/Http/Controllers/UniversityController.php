<?php

namespace App\Http\Controllers;

use App\Models\University;
use App\Http\Requests\StoreUniversityRequest;
use App\Http\Requests\UpdateUniversityRequest;
use Symfony\Component\HttpFoundation\Request;


class UniversityController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $universities = University::all();
        return view('university.index')->with(compact('universities'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('university.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'university_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'description' => 'required|string|max:255',

        ]);

        $university = new University();
        $university->university_name = $request->university_name;
        $university->slug = $request->slug;
        $university->description = $request->description;

        $university->save();

        return redirect()->route('university')->with('success', 'Data universitas berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(University $university)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id, University $university)
    {
        $university = University::find($id);
        return view('university.edit')->with(compact('university'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($id, Request $request, University $university)
    {
        $request->validate([
            'university_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'description' => 'required|string|max:255',

        ]);

        $university = University::whereId($id)->first();
            $university->university_name = $request->university_name;
            $university->slug = $request->slug;
            $university->description = $request->description;
        $university->update();

        return redirect()->route('university')->with('success', 'Data universitas berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id, University $university)
    {
        $university = University::find($id);
        $university->delete();
        return redirect()->route('university')->with('success', 'Data universitas berhasil dihapus!');
    }
}
