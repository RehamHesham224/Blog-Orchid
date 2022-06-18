<?php

use App\Http\Controllers\Api\AboutController;
use App\Http\Controllers\Api\ArticleController;
use App\Http\Controllers\Api\AuthApiController;
use App\Http\Controllers\Api\CategoryController;
use App\Http\Controllers\Api\CommentController;
use App\Http\Controllers\Api\ContactController;
use App\Http\Controllers\Api\HomeController;
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



Route::prefix('auth')->controller(AuthApiController::class)->group(function () {
    Route::post('register', 'register');
    Route::post('login', 'login');
});
//protected routes
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/contact-us', [ContactController::class, 'store'])
        ->name('contact-us.store');
    Route::post('/comment', [CommentController::class, 'store'])
        ->name('comment.store');
});


// routes for home page
Route::get('/', [HomeController::class, 'index'])
    ->name('home');

//routes for categories

Route::apiResource('/categories', CategoryController::class)
    ->only(['index', 'show']);


// routes for article Resource
Route::apiResource('/articles', ArticleController::class)
    ->only('show');

// routes for contact page
Route::get('/contact-us', [ContactController::class, 'index'])
    ->name('contact-us');



// routes for about page
Route::get('/about', [AboutController::class, 'index'])
    ->name('about');

// rout for comments
Route::post('/comment', [CommentController::class, 'store'])
    ->name('comment.store');
