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

    public function student_photo_verification($id){
        $student_data = Student_media::where('student_id', $id)->with('student')->first();
        // dd($data);
        $datas = Student_media::where('student_id', $id)->get();
        return view('manage-students.student_photo_verification', compact('student_data', 'datas'));
    }
}
