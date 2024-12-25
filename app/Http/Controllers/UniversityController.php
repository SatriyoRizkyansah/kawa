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
    public function store(StoreUniversityRequest $request)
    {
        $request->validate([
            'university_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'description' => 'required|string|max:255',

        ]);

        $university = new University();
        $university->university_name = $request->university_name;
        $university->slug = $university->slug;
        $university->description = $university->description;
        $university->save();

        return redirect()->route('dashboard')->with('success', 'Data universitas berhasil ditambahkan!');
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
    public function edit(University $university)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateUniversityRequest $request, University $university)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(University $university)
    {
        //
    }
}
