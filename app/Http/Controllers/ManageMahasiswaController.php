<?php

namespace App\Http\Controllers;

use App\Models\Faculty;
use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\academic_program;

class ManageMahasiswaController extends Controller
{
    public function faculties(){
        $faculties = Faculty::all();

        return view('manage-students.faculties', compact('faculties'));
    }

    public function academic(){
        $academics = Academic_program::all();

        return view('manage-students.academic-programs', compact('academics'));
    }

    public function students(){
        $students = Student::with('academic_program')->get();

        return view('manage-students.students', compact('students'));
    }
}
