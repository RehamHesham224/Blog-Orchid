<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\CommentRequest;
use App\Http\Resources\CommentsResource;
use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    //
    public function store(CommentRequest $request)
    {
        $comment = Comment::create($request->validated());
        // dd($request->validated());
        return new CommentsResource($comment);
    }
}
