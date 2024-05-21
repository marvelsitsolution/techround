<?php

use App\Http\Controllers\ContactController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {

    Route::get('/contact/create',[ContactController::class, 'create'])->name('contact.create');
    Route::post('/contact/store',[ContactController::class, 'store'])->name('contact.store');
    Route::get('/contact/list',[ContactController::class, 'index'])->name('contact.list');
    Route::get('/contact/edit/{id}',[ContactController::class, 'edit'])->name('contact.edit');
    Route::delete('/contact/delete/{id}',[ContactController::class, 'delete'])->name('contact.delete');
    Route::get('/contact/data_tables',[ContactController::class, 'datatables'])->name('contact.data_tables');


    Route::get('/contact/importindex',[ContactController::class, 'importindex'])->name('contact.importindex');
    Route::post('/contact/import',[ContactController::class, 'importfile'])->name('contact.importfile');



    Route::get('/group/create',[GroupController::class, 'create'])->name('group.create');
    Route::post('/group/store',[GroupController::class, 'store'])->name('group.store');
    Route::get('/group/edit/{id}',[GroupController::class, 'edit'])->name('group.edit');



    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
