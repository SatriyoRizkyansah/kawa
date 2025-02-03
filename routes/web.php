<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FloorController;
use App\Http\Controllers\ManageController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\BuildingController;
use App\Http\Controllers\CameraController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UniversityController;
use App\Http\Controllers\ViolationController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

Route::get('/', function () {
    return view('auth.login');
});

// Route::get('/dashboard', function () {
//     return view(view: 'dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');
Route::prefix('admin')->group(function () {

    Route::middleware(['auth'])->group(function () {
        // Profile
        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

        // Page Dashboard index
        Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

        // Kampus
        Route::get('/university_detail/{slug}', [DashboardController::class, 'university_detail'])->name('detail.university');
        Route::get('/cameras_building/{id}', [DashboardController::class, 'cameras_building'])->name('cameras.by.building');
        Route::get('/cameras_floor/{id}', [DashboardController::class, 'cameras_floor'])->name('cameras.by.floor');
        Route::get('/camera_detail/{id}', [DashboardController::class, 'camera_detail'])->name('camera.detail');
        Route::get('/beranda', [DashboardController::class, 'beranda'])->name('beranda');
        Route::get('/dashboard/building/{id}', [DashboardController::class, 'showByBuilding'])->name('dashboardshow by building');
        Route::get('/dashboard/floor/{id}', [DashboardController::class, 'showByFloor'])->name('dashboard show by floor');

        // User Information
        Route::get('/user_information', [DashboardController::class, 'showUserInformation'])->name('user_info');

        // Page violations
        Route::get('/violations', [ViolationController::class, 'index'])->name('violations');
        Route::get('/detail_violation/{id}', [ViolationController::class, 'detail'])->name('detail.violation');

        // Page Manage
        Route::prefix('manage')->group(function () {
            // Page Camera
            Route::get('/camera', [CameraController::class, 'index'])->name('camera');
            Route::get('/camera/create', [CameraController::class, 'create'])->name('camera.create');
            Route::post('/camera/create', [CameraController::class, 'store'])->name('camera store');
            Route::get('/camera/{id}/edit', [CameraController::class, 'edit'])->name('camera.edit');
            Route::post('/camera/{id}/edit', [CameraController::class, 'update'])->name('camera update');
            Route::delete('/camera/delete/{id}', [CameraController::class, 'destroy'])->name('camera.delete');

            // Page Kampus (University)
            Route::get('/university', [UniversityController::class, 'index'])->name('university');
            Route::get('/university/create', [UniversityController::class, 'create'])->name('university.create');
            Route::post('/university/create', [UniversityController::class, 'store'])->name('university.store');
            Route::get('/university/{id}/edit', [UniversityController::class, 'edit'])->name('university.edit');
            Route::post('/university/{id}/edit', [UniversityController::class, 'update'])->name('university.update');
            Route::delete('/university/delete/{id}', [UniversityController::class, 'destroy'])->name('university.delete');
            Route::get('/building/{id}', [BuildingController::class, 'showByUniversity'])->name('buildingByUniversity');
            
            // Page Gedung (Building)
            Route::get('/building', [BuildingController::class, 'index'])->name('building');
            Route::get('/gedung/create', [BuildingController::class, 'create'])->name('building.create');
            Route::post('/gedung/create', [BuildingController::class, 'store'])->name('building.create');
            Route::get('/building/{id}/edit', [BuildingController::class, 'edit'])->name('building.edit');
            Route::post('/building/{id}/edit', [BuildingController::class, 'update'])->name('building update');
            Route::delete('/building/delete/{id}', [BuildingController::class, 'destroy'])->name('building.delete');
            Route::get('/floor/{id}', [FloorController::class, 'showByBuilding'])->name('floorByBuilding');

            // Page Lantai (Floor)
            Route::get('/floor', [FloorController::class, 'index'])->name('floor');
            Route::get('/lantai/create', [FloorController::class, 'create'])->name('floor.create');
            Route::post('/lantai/create', [FloorController::class, 'store'])->name('floor store');
            Route::get('/floor/{id}/edit', [FloorController::class, 'edit'])->name('floor.edit');
            Route::post('/floor/{id}/edit', [FloorController::class, 'update'])->name('floor update');
            Route::delete('/floor/delete/{id}', [FloorController::class, 'destroy'])->name('floor.delete');
        });
    });
});

    // Route untuk fetch data gedung & lantai
    Route::get('/api/get-gedung/{universityId}', [CameraController::class, 'getGedung']);
    Route::get('/api/get-lantai/{id}', [CameraController::class, 'getLantai']);

    // Fetch data gedung
    Route::get('/manage/floor/create/get-gedung/{universityId}', [FloorController::class, 'getGedung']);

require __DIR__.'/auth.php';
