<?php

namespace App\Http\Controllers\Website;
use App\Http\Controllers\controller;
use App\Models\Article;
use App\Models\Category;

class ArticleController extends Controller
{
    public function show($slug)
    {
        // return view('website.articles.show');
        $article = Article::where('slug', $slug)
            ->with(['user', 'category', 'comments' => fn($q) => $q->where('is_approved', 1)])
            ->firstOrFail();

        $related = Article::published()
            ->where('category_id', $article->category_id)
            ->where('id', '!=', $article->id)
            ->limit(4)
            ->get();

        $categories = Category::all();

        return view('website.articles.show', compact('article', 'related','categories'));
    }
}
