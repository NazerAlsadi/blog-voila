<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Website\HomeController;
use App\Http\Controllers\Website\ArticleController;
use App\Http\Controllers\Website\CategoryController;
use App\Http\Controllers\Website\CommentController;
use App\Http\Controllers\Website\ContactController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\AdminArticleController;
use App\Http\Controllers\Admin\AdminCategoryController;
use App\Http\Controllers\Admin\AdminCommentController;
use App\Http\Controllers\Admin\AdminMessageController;


/*
|--------------------------------------------------------------------------
| Public Routes
|--------------------------------------------------------------------------
*/

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/search', [HomeController::class, 'search'])->name('search');

Route::get('/articles/{slug}', [ArticleController::class, 'show'])->name('website.articles.show'); 
Route::get('/categories/{slug}', [CategoryController::class, 'show'])->name('website.categories.show');

Route::post('/comments', [CommentController::class, 'store'])->name('website.comments.store');
Route::get('/contact', [ContactController::class, 'show'])->name('website.contact.show');
Route::post('/contact', [ContactController::class, 'store'])->name('website.contact.store');


/*
|--------------------------------------------------------------------------
| Admin Authentication
|--------------------------------------------------------------------------
*/

// Admin panel

Route::prefix('admin')->name('admin.')->group(function () {
  
  Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
  // Articles
  Route::resource('articles', AdminArticleController::class);
        

  // Categories
  Route::resource('categories', AdminCategoryController::class); 

  // Comments
  Route::get('comments', [AdminCommentController::class, 'index'])->name('comments.index');
  Route::post('comments/{comment}/approve', [AdminCommentController::class, 'approve'])->name('comments.approve');
  Route::delete('comments/{comment}', [AdminCommentController::class, 'destroy'])->name('comments.destroy');
  Route::patch('comments/{comment}/toggle',[AdminCommentController::class, 'toggle'])->name('comments.toggle');


  // Contact Messages
  Route::get('/messages', [AdminMessageController::class, 'index'])->name('messages.index');
  Route::post('/messages/{message}/review', [AdminMessageController::class, 'review'])->name('messages.review');
  Route::delete('/messages/{id}', [AdminMessageController::class, 'destroy'])->name('messages.destroy');

});













Route::get('/admin/login', [AuthController::class, 'showLoginForm'])->name('admin.login');
Route::post('/admin/login', [AuthController::class, 'login'])->name('admin.login.submit');

Route::middleware('auth')->prefix('admin')->name('admin.')->group(function () {

  //  Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

    // Articles
    // Route::resource('articles', AdminArticleController::class);

    // // Categories
    // Route::resource('categories', AdminCategoryController::class);

    // // Comments
    // Route::get('comments', [AdminCommentController::class, 'index'])->name('comments.index');
    // Route::post('comments/{comment}/approve', [AdminCommentController::class, 'approve'])->name('comments.approve');
    // Route::delete('comments/{comment}', [AdminCommentController::class, 'destroy'])->name('comments.destroy');

    // // Contact Messages
    // Route::get('/messages', [AdminMessageController::class, 'index'])->name('messages.index');
    // Route::post('/messages/{message}/review', [AdminMessageController::class, 'review'])->name('messages.review');
});
