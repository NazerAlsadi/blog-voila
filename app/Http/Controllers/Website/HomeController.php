<?php

namespace App\Http\Controllers\Website;
use App\Http\Controllers\controller;
use App\Models\Article;
use App\Models\Category;
use Illuminate\Http\Request;
class HomeController extends Controller
{
    public function index(Request $request)
    {
        /*
        |--------------------------------------------------------------------------
        | Pagination Setup (Manual)
        |--------------------------------------------------------------------------
        */
        $perPage = 5;
        $page = (int) $request->get('page', 1);
        $skip = ($page - 1) * $perPage;

        /*
        |--------------------------------------------------------------------------
        | Base Query (Reusable & Optimized)
        |--------------------------------------------------------------------------
        */
        $baseQuery = Article::with([
                'user:id,name',
                'category:id,name,slug'
            ])
            ->published()
            ->latest();

        /*
        |--------------------------------------------------------------------------
        | Featured Article (Hero)
        |--------------------------------------------------------------------------
        */
        $featuredArticle = (clone $baseQuery)->first();

        /*
        |--------------------------------------------------------------------------
        | Grid Articles (2 Columns × 3 Items)
        |--------------------------------------------------------------------------
        */
        $gridArticles = (clone $baseQuery)
            ->when($featuredArticle, function ($q) use ($featuredArticle) {
                $q->where('id', '!=', $featuredArticle->id);
            })
            ->take(6)
            ->get();

        /*
        |--------------------------------------------------------------------------
        | Latest Articles List (Below Grid) - MANUAL PAGINATION
        |--------------------------------------------------------------------------
        */
        $articlesQuery = (clone $baseQuery)
            ->when($featuredArticle, function ($q) use ($featuredArticle) {
                $q->where('id', '!=', $featuredArticle->id);
            });

        $totalArticles = $articlesQuery->count();

        $articles = $articlesQuery
            ->skip($skip)
            ->take($perPage)
            ->get();

        $totalPages = (int) ceil($totalArticles / $perPage);

        /*
        |--------------------------------------------------------------------------
        | Recent Articles (Sidebar)
        |--------------------------------------------------------------------------
        */
        $recentArticles = (clone $baseQuery)
            ->take(7)
            ->get();

        /*
        |--------------------------------------------------------------------------
        | Categories (with count)
        |--------------------------------------------------------------------------
        */
        $categories = Category::withCount([
                'articles as published_articles_count' => function ($q) {
                    $q->published();
                }
            ])
            ->get();

        return view('home', compact(
            'featuredArticle',
            'gridArticles',
            'articles',
            'recentArticles',
            'categories',
            'page',
            'totalPages'
        ));
    }
        
    //     /*
    //     |--------------------------------------------------------------------------
    //     | Pagination Setup (Manual)
    //     |--------------------------------------------------------------------------
    //     */
    //     $perPage = 5;
    //     $page = (int) $request->get('page', 1);
    //     $skip = ($page - 1) * $perPage;
    //     /*
    //     |--------------------------------------------------------------------------
    //     | Base Query (Reusable & Optimized)
    //     |--------------------------------------------------------------------------
    //     */
    //     $baseQuery = Article::with([
    //             'user:id,name',
    //             'category:id,name,slug'
    //         ])
    //         ->published()
    //         ->latest();

    //     /*
    //     |--------------------------------------------------------------------------
    //     | Featured Article (Hero)
    //     |--------------------------------------------------------------------------
    //     */
    //     $featuredArticle = (clone $baseQuery)->first();

    //     /*
    //     |--------------------------------------------------------------------------
    //     | Grid Articles (2 Columns × 3 Items)
    //     |--------------------------------------------------------------------------
    //     */
    //     $gridArticles = (clone $baseQuery)
    //         ->when($featuredArticle, function ($q) use ($featuredArticle) {
    //             $q->where('id', '!=', $featuredArticle->id);
    //         })
    //         ->take(6)
    //         ->get();

    //     /*
    //     |--------------------------------------------------------------------------
    //     | Latest Articles List (Below Grid)
    //     |--------------------------------------------------------------------------
    //     */
    //     $articles = (clone $baseQuery)
    //         ->when($featuredArticle, function ($q) use ($featuredArticle) {
    //             $q->where('id', '!=', $featuredArticle->id);
    //         })
    //         ->paginate(5);

    //     /*
    //     |--------------------------------------------------------------------------
    //     | Recent Articles (Sidebar)
    //     |--------------------------------------------------------------------------
    //     */
    //     $recentArticles = (clone $baseQuery)
    //         ->take(7)
    //         ->get();

    //     /*
    //     |--------------------------------------------------------------------------
    //     | Categories (with count)
    //     |--------------------------------------------------------------------------
    //     */
    //     $categories = Category::withCount([
    //             'articles as published_articles_count' => function ($q) {
    //                 $q->published();
    //             }
    //         ])
    //         ->get();

    //     return view('home', compact(
    //         'featuredArticle',
    //         'gridArticles',
    //         'articles',
    //         'recentArticles',
    //         'categories',
    //         'page',
    //         'totalPages'
    //     ));
        
    // }


    public function search(Request $request)
    {
        $search = $request->search;

        $articles = Article::with(['user', 'category'])
            ->published()
            ->search($search)
            ->latest()
            ->paginate(10)
            ->withQueryString();

        $categories = Category::all();

        return view('search', compact(
            'articles',
            'categories',
            'search'
        ));
    }
}
