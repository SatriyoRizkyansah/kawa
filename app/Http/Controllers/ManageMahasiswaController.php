<?php

namespace App\Http\Controllers;

use App\Models\Faculty;
use App\Models\Student;
use Illuminate\Http\Request;
use App\Models\Student_media;
use App\Models\Academic_program;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File; 
use Illuminate\Support\Facades\Storage;


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

    // public function students(){
    //     $students = Student::with('academic_program')->get();

    //     return view('manage-students.students', compact('students'));
    // }

    public function students()
    {
        $students = Student::with(['academic_program', 'student_media'])->get();
        return view('manage-students.students', compact('students'));
    }


    public function photo_verification($id){
        $student = Student::find($id);
        $student_data = Student_media::where('student_id', $id)->with('student')->first();
        // dd($data);
        $datas = Student_media::where('student_id', $id)->get();
        return view('manage-students.photo_verification', compact('student_data', 'datas', 'student'));
    }


    public function deleteSelectedPhotos(Request $request)
    {
        $request->validate([
            'photo_ids' => 'required|array',
            'photo_ids.*' => 'exists:student_media,id'
        ]);

        try {
            $photos = Student_media::whereIn('id', $request->photo_ids)->get();

            foreach ($photos as $photo) {
                if (!$photo->student) {
                    continue; 
                }

                $filePath = storage_path('app/public/images/student_media/' . $photo->student->nim . '/' . $photo->file_name);

                Log::info('Checking file existence before deletion', [
                    'file_path' => $filePath,
                    'exists' => File::exists($filePath)
                ]);

                // cek file ada dan hapus
                if (File::exists($filePath)) {
                    File::delete($filePath);
                    Log::info('File deleted successfully', ['file_path' => $filePath]);
                } else {
                    Log::warning('File not found, skipping deletion', ['file_path' => $filePath]);
                }

                $photo->delete();
            }

            return redirect()->back()->with('success', 'Foto berhasil dihapus.');
        } catch (\Exception $e) {
            Log::error('Error deleting photos', ['error' => $e->getMessage()]);
            return redirect()->back()->with('error', 'Terjadi kesalahan saat menghapus foto: ' . $e->getMessage());
        }
    }

    public function updateStatus(Request $request)
    {

        // dd($request);
        Student_media::where('student_id', $request->id)->update([
        'status' => $request->status
        ]);

        return redirect()->back()->with('success', 'Status berhasil diperbarui!');
    }

}
