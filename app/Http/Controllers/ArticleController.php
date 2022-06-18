<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Comment;
use App\Models\Tag;
use Illuminate\Http\Request;

class ArticleController extends Controller
{

    public function show(Article $article)
    {
        $tags = Tag::all();
        $comments = $article->comments()->with('user')->get();

        return view('articles.show', compact('article', 'tags', 'comments'));
    }
}
