<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AdvertiseResource;
use App\Http\Resources\ArticlesResource;
use App\Http\Resources\CategoriesResource;
use App\Http\Resources\PopularArticlesResource;
use App\Http\Resources\TagResource;
use App\Models\Advertise;
use App\Models\Tag;
use App\Models\Article;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    //
    //
    public function index(Request $request)
    {

        $articles = Article::latest()->filter(request(['search']))->with('categories')->Paginate(6);
        $articles = $articles->appends($request->all());

        $tags = Tag::all();

        $popular_articles = Article::where('popular', '=', 1)->get();

        $advertises = Advertise::all();

        return [ArticlesResource::collection($articles), TagResource::collection($tags), PopularArticlesResource::collection($popular_articles), AdvertiseResource::collection($advertises)];
    }
}
