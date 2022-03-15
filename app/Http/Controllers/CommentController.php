<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CommentController extends Controller
{
    //
    public function index()
    {

        return view('categories.index');
    }
    public function show($id)
    {
        return view('categories.show');
    }
}
