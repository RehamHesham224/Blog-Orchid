<?php

namespace App\Http\Controllers;

use App\Models\Advertise;
use App\Models\Article;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {

        $articles = Article::latest()->filter(request(['search']))->with('categories')->Paginate(6);
        $articles = $articles->appends($request->all());

        $tags = Tag::all();

        $popular_articles = Article::where('popular', '=', 1)->get();

        $advertises = Advertise::all();

        return view('home.index', compact('articles', 'tags', 'popular_articles', 'advertises'));
    }
}
