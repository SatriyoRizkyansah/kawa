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
        return view('manage.university.index')->with(compact('universities'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('manage.university.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id' => 'required|string|max:255',
            'university_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'img' => 'required|image|mimes:jpeg,png,jpg,gif|max:5024',
            'description' => 'required|string|max:255',
        ]);

        if ($request->hasFile('img')) {
            $image = $request->file('img');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            // Simpan gambar ke dalam direktori 'public/images/university'
            $image->storeAs('images/university', $imageName, 'public');
        }

        $university = new University();
        $university->id = md5($request->id);
        $university->university_name = $request->university_name;
        $university->img = $imageName; 
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
        return view('manage.university.edit')->with(compact('university'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'university_name' => 'required|string|max:255',
            'slug' => 'required|string|max:255',
            'img' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5024',
            'description' => 'required|string|max:255',
        ]);

        $university = University::findOrFail($id);

        if ($request->hasFile('img')) {
            if ($university->img && \Storage::exists('public/images/university/' . $university->img)) {
                \Storage::delete('public/images/university/' . $university->img);
            }

            $image = $request->file('img');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->storeAs('images/university', $imageName, 'public');
            $university->img = $imageName; // Update dengan nama gambar baru
        }

        $university->university_name = $request->university_name;
        $university->slug = $request->slug;
        $university->description = $request->description;
        $university->save();

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
