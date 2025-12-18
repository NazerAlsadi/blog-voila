<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\ArticleRequest;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class AdminArticleController extends Controller
{
    public function index()
    {
        $articles = Article::with(['category', 'user'])->get();
        return view('admin.articles.index', compact('articles'));
    }

    public function create()
    {
        return view('admin.articles.create', [
            'categories' => Category::all(),
            'users' => User::all()
        ]);
    }

    public function store(ArticleRequest $request)
    {
        $data = $request->validated();

        if ($request->hasFile('image')) {
            $data['image'] = $request->image->store('articles', 'public');
        }

        $data['slug'] = Str::slug($data['title']);

        Article::create($data);

        return redirect()->route('admin.articles.index')->with('success', 'Article created');
    }

    public function edit(Article $article)
    {
        return view('admin.articles.edit', [
            'article' => $article,
            'categories' => Category::all(),
            'users' => User::all(), 
        ]);
    }

    public function update(ArticleRequest $request, Article $article)
    {
        
       // dd($request->all());
        $data = $request->validated();

        if ($request->hasFile('image')) {

            // حذف الصورة القديمة إذا موجودة
            if ($article->image && Storage::disk('public')->exists($article->image)) {
                Storage::disk('public')->delete($article->image);
            }

            // تخزين الصورة الجديدة
            $data['image'] = $request->image->store('articles', 'public');
        }

        $data['slug'] = Str::slug($data['title']);

        $article->update($data);

        return redirect()
            ->route('admin.articles.index')
            ->with('success', 'Updated successfully');

    }

    public function destroy(Article $article)
    {
        $article->delete();

        return back()->with('success', 'Deleted');
    }
}
