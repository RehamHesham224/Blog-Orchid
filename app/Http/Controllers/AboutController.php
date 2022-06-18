<?php

namespace App\Http\Controllers;

use App\Models\Achievement;
use App\Models\Article;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    //
    //
    public function index()
    {
        $tags = Tag::all();
        $popular_articles = Article::where('popular', '=', 1)->get();
        $achievements = Achievement::Paginate(3);
        return view('about.index', compact('tags', 'popular_articles', 'achievements'));
    }
}
