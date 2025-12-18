<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Comment;
use App\Models\ContactMessage;

class DashboardController extends Controller
{
    public function index()
    {
        return view('admin.index');

        // return view('admin.dashboard', [
        //     'articles' => Article::count(),
        //     'comments' => Comment::where('is_approved', false)->count(),
        //     'messages' => ContactMessage::where('status', 'new')->count(),
        // ]);
    }
}
