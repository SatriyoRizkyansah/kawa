<?php

namespace App\Http\Controllers;

use App\Models\Faculty;
use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\Academic_program;
use App\Models\Student_media;

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

    public function photo_verification(){
        $datas = Student_media::with('student')->get();

        return view('manage-students.photo_verification
        ', compact('datas'));
    }
}
