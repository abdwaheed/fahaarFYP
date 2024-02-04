<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('frontend/home');
});
Route::get('/frontend', function () {
    return view('frontend/home');
});

// Route::get('/test', function () {
//     return 'test student';
// });

// login / register
Auth::routes();

// home/dashboard
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/register', [App\Http\Controllers\Auth\RegisterController::class, 'index'])->name('register');

Route::get('/registeruser', [App\Http\Controllers\HomeController::class, 'registeruser'])->name('registeruser');
Route::post('/registerusercreate', [App\Http\Controllers\HomeController::class, 'registerusercreate'])->name('registerusercreate');

// Reques Portal
Route::get('/requestportal', [App\Http\Controllers\RequestPortalController::class, 'index'])->name('requestportal');
Route::get('/requestportal_save', [App\Http\Controllers\RequestPortalController::class, 'store'])->name('requestportal_save');
Route::get('/myresources', [App\Http\Controllers\RequestPortalController::class, 'myresources'])->name('myresources');
Route::POST('/resourcestatus', [App\Http\Controllers\RequestPortalController::class, 'resourcestatus'])->name('resource_status');

// Task
Route::get('/task', [App\Http\Controllers\TaskController::class, 'index'])->name('task');
Route::get('/mytask', [App\Http\Controllers\TaskController::class, 'mytask'])->name('mytask');
Route::get('/taskupload', [App\Http\Controllers\TaskController::class, 'taskupload'])->name('taskupload');
Route::POST('/taskstatus', [App\Http\Controllers\TaskController::class, 'taskstatus'])->name('task_status');
Route::get('/taskcreate', [App\Http\Controllers\TaskController::class, 'create'])->name('task_create');
Route::get('/taskstore', [App\Http\Controllers\TaskController::class, 'store'])->name('task_store');
Route::POST('/reassign', [App\Http\Controllers\TaskController::class, 'reassign'])->name('task_reassign');


// Team
Route::get('/team', [App\Http\Controllers\TeamController::class, 'index'])->name('team');
Route::get('/myteam', [App\Http\Controllers\TeamController::class, 'myteam'])->name('my_team');

// leave
Route::get('/leave', [App\Http\Controllers\LeaveController::class, 'index'])->name('leave');
Route::get('/leavecreate', [App\Http\Controllers\LeaveController::class, 'create'])->name('leave_create');
Route::get('/leavestore', [App\Http\Controllers\LeaveController::class, 'store'])->name('leave_store');
Route::get('/leavestatus', [App\Http\Controllers\LeaveController::class, 'leavestatus'])->name('leave_status');


// performance
Route::get('/performance', [App\Http\Controllers\PerformanceController::class, 'index'])->name('performance');
Route::get('/performance_status', [App\Http\Controllers\PerformanceController::class, 'performancestatus'])->name('performance_status');

//feedback
Route::get('/feedback', [App\Http\Controllers\FeedbackController::class, 'index'])->name('feedback');

// profile
Route::get('/profile', [App\Http\Controllers\ProfileController::class, 'index'])->name('profile');
Route::get('/profileedit', [App\Http\Controllers\ProfileController::class, 'edit'])->name('profile_edit');
Route::POST('/profilestore', [App\Http\Controllers\ProfileController::class, 'profileupdate'])->name('profile_update');
// Route::POST('/profilepic', [App\Http\Controllers\TaskController::class, 'taskstatus'])->name('profile_pic');




Route::get('/notificationtesting', [App\Http\Controllers\HomeController::class, 'notificationtesting'])->name('notificationtesting');


Route::post('/deposit', [App\Http\Controllers\DepositController::class,'deposit'])->name('deposit');
Route::get('/mark-as-read', [App\Http\Controllers\DepositController::class,'markAsRead'])->name('mark-as-read');


// php artisan make:model Feedback -mcr  migrataion controller resource
// php artisan make:model Performance -mcr
// php artisan make:model Leave -mcr
// php artisan make:model Team -mcr
// php artisan make:model Task -mcr
// php artisan make:model RequestPortal -mcr
// php artisan make:model Profile -mcr
