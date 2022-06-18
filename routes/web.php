<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\NewsletterController;
use App\Jobs\SendEmailJob;
use App\Mail\SendEmail;
use App\Models\Comment;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\ValidationException;

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

//mail chimp
Route::post('newsletter', NewsletterController::class);




//mail
Route::get('/mail', function () {

    dispatch(new SendEmailJob());

    return 'Email Sent';
});
// routes for home page
Route::get('/', [HomeController::class, 'index'])
    ->name('home');


//routes for categories

Route::resource('/categories', CategoryController::class)
    ->only(['index', 'show']);


// routes for article Resource
Route::resource('/articles', ArticleController::class)
    ->only('show');

// routes for contact page
Route::get('/contact-us', [ContactController::class, 'index'])
    ->name('contact-us');

Route::post('/contact-us', [ContactController::class, 'store'])
    ->name('contact-us.store');

// routes for about page
Route::get('/about', [AboutController::class, 'index'])
    ->name('about');


// rout for comments
Route::post('/comment', [CommentController::class, 'store'])
    ->name('comment.store');



Auth::routes();
