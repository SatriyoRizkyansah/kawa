<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\violation;
use App\Http\Requests\StoreviolationRequest;
use App\Http\Requests\UpdateviolationRequest;

class ViolationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    public function detail($id){
        $violation = Violation::findOrFail($id);
        $student = Student::Where('id', $violation->student_id)->first();
        return view('violations.detail', compact('violation', 'student'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreviolationRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(violation $violation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(violation $violation)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateviolationRequest $request, violation $violation)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(violation $violation)
    {
        //
    }
}
