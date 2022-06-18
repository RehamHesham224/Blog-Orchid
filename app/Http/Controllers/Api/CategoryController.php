<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\ArticleResource;
use App\Http\Resources\ArticlesResource;
use App\Http\Resources\CategoriesResource;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\PopularArticlesResource;
use App\Http\Resources\TagResource;
use App\Models\Article;
use App\Models\Category;
use App\Models\Tag;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    //
    public function index(Request $request)
    {
        $categories = Category::latest()->filter(request(['search']))->Paginate(3);
        $categories = $categories->appends($request->all());

        $tags = Tag::all();

        $popular_articles = Article::where('popular', '=', 1)->get();


        return [CategoriesResource::collection($categories), TagResource::collection($tags), PopularArticlesResource::collection($popular_articles)];
    }
    public function show(Category $category)
    {
        $tags = Tag::all();
        $articles = $category->articles()->paginate(6);
        $popular_articles = Article::where('popular', '=', 1)->get();

        return [PopularArticlesResource::collection($popular_articles), TagResource::collection($tags), ArticlesResource::collection($articles)];
    }
}
