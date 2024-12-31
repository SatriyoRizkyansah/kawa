<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FloorController;
use App\Http\Controllers\ManageController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\BuildingController;
use App\Http\Controllers\CameraController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UniversityController;
use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

Route::get('/', function () {
    return view('auth.login');
});

// Route::get('/dashboard', function () {
//     return view(view: 'dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::middleware(['auth'])->group(function () {
    // Page Dashboard index
    Route::get('/dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'verified']);

    // Kampus
    Route::get('/university_detail/{id}', [DashboardController::class, 'university_detail'])->middleware(['auth', 'verified'])->name('detail university');
    Route::get('/cameras_building/{id}', [DashboardController::class, 'cameras_building'])->middleware(['auth', 'verified'])->name('cameras by building');
    Route::get('/cameras_floor/{id}', [DashboardController::class, 'cameras_floor'])->middleware(['auth', 'verified'])->name('cameras by floor');
    Route::get('/camera_detail/{id}', [DashboardController::class, 'camera_detail'])->middleware(['auth', 'verified'])->name('camera detail');
    Route::get('/beranda', [DashboardController::class, 'beranda'])->middleware(['auth', 'verified'])->name('beranda');
    Route::get('/dashboard/building/{id}', [DashboardController::class, 'showByBuilding'])->middleware(['auth', 'verified'])->name('dashboard show by building');
    Route::get('/dashboard/floor/{id}', [DashboardController::class, 'showByFloor'])->middleware(['auth', 'verified'])->name('dashboard show by floor');

    // Kampus
    // Route::get('/kampus/{id}', [DashboardController::class, 'viewKampusAll'])->middleware(['auth', 'verified'])->name('kampus.view');
    // Route::get('/kampus/building/{id}', [DashboardController::class, 'viewKampusAll'])->middleware(['auth', 'verified']);

    // User Information
    Route::get('/user_information', [DashboardController::class, 'showUserInformation'])->middleware(['auth', 'verified'])->name('show user information');
    

    // Page Camera
    Route::get('/camera', [CameraController::class, 'index'])->name('camera');
    Route::get('/camera/create', [CameraController::class, 'create'])->name('camera create');
    Route::post('/camera/create', [CameraController::class, 'store'])->name('camera store');
    Route::get('/camera/edit/{id}', [CameraController::class, 'edit'])->name('camera edit');
    Route::post('/camera/edit/{id}', [CameraController::class, 'update'])->name('camera update');
    Route::delete('/camera/delete/{id}', [CameraController::class, 'destroy'])->name('destroy');

    // Page Kampus (University)
    Route::get('/university', [UniversityController::class, 'index'])->middleware(['auth', 'verified'])->name('university');
    Route::get('/university/create', [UniversityController::class, 'create'])->name('university create');
    Route::post('/university/create', [UniversityController::class, 'store'])->name('university store');
    Route::get('/university/edit/{id}', [UniversityController::class, 'edit'])->name('university edit');
    Route::post('/university/edit/{id}', [UniversityController::class, 'update'])->name('university update');
    Route::delete('/university/delete/{id}', [UniversityController::class, 'destroy'])->name('destroy');
    
    // Page Gedung (Building)
    Route::get('/building', [BuildingController::class, 'index'])->middleware(['auth', 'verified'])->name('building');
    Route::get('/building/create', [BuildingController::class, 'create'])->name('building create');
    Route::post('/building/create', [BuildingController::class, 'store'])->name('building store');
    Route::get('/building/edit/{id}', [BuildingController::class, 'edit'])->name('building edit');
    Route::post('/building/edit/{id}', [BuildingController::class, 'update'])->name('building update');
    Route::delete('/building/delete/{id}', [BuildingController::class, 'destroy'])->name('destroy');

    // Page Lantai (Floor)
    // Route::get('/building', [ManageController::class, 'index'])->middleware(['auth', 'verified'])->name('gedung')
    Route::get('/floor', [FloorController::class, 'index'])->middleware(['auth', 'verified'])->name('floor');
    Route::get('/floor/create', [FloorController::class, 'create'])->name('floor create');
    Route::post('/floor/create', [FloorController::class, 'store'])->name('floor store');
    Route::get('/floor/edit/{id}', [FloorController::class, 'edit'])->name('floor edit');
    Route::post('/floor/edit/{id}', [FloorController::class, 'update'])->name('floor update');
    Route::delete('/floor/delete/{id}', [FloorController::class, 'destroy'])->name('destroy');
});

require __DIR__.'/auth.php';
