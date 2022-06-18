<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Tag;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(Request $request)
    {
        $categories = Category::latest()->filter(request(['search']))->Paginate(3);
        $categories = $categories->appends($request->all());

        $tags = Tag::all();

        $popular_articles = Article::where('popular', '=', 1)->get();

        return view('categories.index', compact('categories', 'tags', 'popular_articles'));
    }
    public function show(Category $category)
    {
        $tags = Tag::all();
        $articles = $category->articles()->paginate(6);
        $popular_articles = Article::where('popular', '=', 1)->get();
        // dd($articles);
        return view('categories.show', compact('category', 'articles', 'tags', 'popular_articles'));
    }
}
