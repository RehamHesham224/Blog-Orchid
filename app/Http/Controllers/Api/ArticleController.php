<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ArticlesResource;
use App\Http\Resources\CommentsResource;
use App\Http\Resources\TagResource;
use App\Models\Article;
use App\Models\Tag;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    //
    //
    public function show(Article $article)
    {
        # code...

        $tags = Tag::all();
        $comments = $article->comments()->with('user')->get();
        return [CommentsResource::collection($comments), TagResource::collection($tags), new ArticlesResource($article)];
    }
}
