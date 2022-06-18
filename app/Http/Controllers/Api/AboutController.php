<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\AchievementResource;
use App\Http\Resources\PopularArticlesResource;
use App\Http\Resources\TagResource;
use App\Models\Achievement;
use App\Models\Article;
use App\Models\Tag;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    //
    public function index()
    {
        $tags = Tag::all();
        $popular_articles = Article::where('popular', '=', 1)->get();
        $achievements = Achievement::Paginate(3);
        return [PopularArticlesResource::collection($popular_articles), TagResource::collection($tags), AchievementResource::collection($achievements)];
        # code...
    }
}
