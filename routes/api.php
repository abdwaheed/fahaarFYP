<?php

use App\Http\Controllers\RequestPortalController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('loginRest', [App\Http\Controllers\Auth\LoginController::class, 'loginRest'])->name('loginRest');

Route::middleware(['auth:sanctum'])->group(function () {
    Route::get('performance', [App\Http\Controllers\PerformanceController::class, 'getPerformance'])->name('performance');
    Route::get('myPerformance', [App\Http\Controllers\PerformanceController::class, 'getMyPerformance'])->name('myPerformance');
    Route::get('leave', [App\Http\Controllers\LeaveController::class, 'getLeaves'])->name('leave');
    Route::get('myLeave', [App\Http\Controllers\LeaveController::class, 'getMyLeaves'])->name('myLeaves');
    Route::get('task', [App\Http\Controllers\TaskController::class, 'getTasks'])->name('task');
    Route::get('mytask', [App\Http\Controllers\TaskController::class, 'getMyTasks'])->name('mytask');
    Route::get('myresources', [App\Http\Controllers\RequestPortalController::class, 'getMyResources'])->name('resources');
    Route::get('resources', [App\Http\Controllers\RequestPortalController::class, 'getResources'])->name('myresources');
    Route::post('logoutRest', [App\Http\Controllers\Auth\LoginController::class, 'logoutRest'])->name('logoutRest');
});
