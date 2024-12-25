<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FloorController;
use App\Http\Controllers\ManageController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\BuildingController;
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
    Route::get('/dashboard', [DashboardController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');
    Route::get('/cctv', [DashboardController::class, 'index'])->middleware(['auth', 'verified'])->name('dashboard');
    Route::get('/dashboard/building/{id}', [DashboardController::class, 'showByBuilding'])->middleware(['auth', 'verified'])->name('dashboard show by building');
    Route::get('/dashboard/floor/{id}', [DashboardController::class, 'showByFloor'])->middleware(['auth', 'verified'])->name('dashboard show by floor');
    

    // Page Manage
    Route::get('/manage', [ManageController::class, 'index'])->name('manage');
    Route::get('/manage/create', [ManageController::class, 'create'])->name('manage create');
    Route::post('/manage/create', [ManageController::class, 'store'])->name('manage store');
    Route::get('/manage/edit/{id}', [ManageController::class, 'edit'])->name('manage edit');
    Route::post('/manage/edit/{id}', [ManageController::class, 'update'])->name('manage update');
    Route::delete('/manage/delete/{id}', [ManageController::class, 'destroy'])->name('destroy');

    // Page Kampus
    Route::get('/university', [UniversityController::class, 'index'])->middleware(['auth', 'verified'])->name('university');
    Route::get('/university/create', [UniversityController::class, 'create'])->name('university create');
    Route::post('/university/create', [UniversityController::class, 'store'])->name('university store');
    Route::get('/university/edit/{id}', [UniversityController::class, 'edit'])->name('university edit');
    Route::post('/university/edit/{id}', [UniversityController::class, 'update'])->name('university update');
    Route::delete('/university/delete/{id}', [UniversityController::class, 'destroy'])->name('destroy');
    
    // Page Gedung
    Route::get('/building', [BuildingController::class, 'index'])->middleware(['auth', 'verified'])->name('building');
    Route::get('/building/create', [BuildingController::class, 'create'])->name('building create');
    Route::post('/building/create', [BuildingController::class, 'store'])->name('building store');
    Route::get('/building/edit/{id}', [BuildingController::class, 'edit'])->name('building edit');
    Route::post('/building/edit/{id}', [BuildingController::class, 'update'])->name('building update');
    Route::delete('/building/delete/{id}', [BuildingController::class, 'destroy'])->name('destroy');

    // Page Floor
    // Route::get('/building', [ManageController::class, 'index'])->middleware(['auth', 'verified'])->name('gedung')
    Route::get('/floor', [FloorController::class, 'index'])->middleware(['auth', 'verified'])->name('floor');
    Route::get('/floor/create', [FloorController::class, 'create'])->name('floor create');
    Route::post('/floor/create', [FloorController::class, 'store'])->name('floor store');
    Route::get('/floor/edit/{id}', [FloorController::class, 'edit'])->name('floor edit');
    Route::post('/floor/edit/{id}', [FloorController::class, 'update'])->name('floor update');
    Route::delete('/floor/delete/{id}', [FloorController::class, 'destroy'])->name('destroy');
});

require __DIR__.'/auth.php';
