<?php

namespace App\Http\Controllers;

use App\Models\academic_program;
use App\Models\Faculty;
use Illuminate\Http\Request;

class ManageMahasiswaController extends Controller
{
    public function faculties(){
        $faculties = Faculty::all();

        return view('manage-students.faculties', compact('faculties'));
    }

    public function academic(){
        $academics = academic_program::all();

        return view('manage-students.academic-programs', compact('academics'));
    }
}
