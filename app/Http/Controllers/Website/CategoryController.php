<?php

namespace App\Http\Controllers\Website;
use App\Http\Controllers\controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function show( $slug)
    {
       
    
        $category = Category::where('slug', $slug)->firstOrFail();

        $perPage = 6; // عدد المقالات بالصفحة
        $page = request()->get('page', 1);

        $skip = ($page - 1) * $perPage;

        $totalArticles = $category->articles()
            ->published()
            ->count();

        $articles = $category->articles()
            ->with('user')
            ->published()
            ->latest()
            ->skip($skip)
            ->take($perPage)
            ->get();

        $totalPages = ceil($totalArticles / $perPage);
        $recentPosts = $category->articles()
        ->published()
        ->latest()
        ->take(5)
        ->get();
        return view('website.categories.show', compact(
            'category',
            'articles',
            'recentPosts',
            'page',
            'totalPages'
        ));
    }
}
