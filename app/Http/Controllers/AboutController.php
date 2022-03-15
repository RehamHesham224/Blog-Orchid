<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    //
    //
    public function index()
    {
        return view('about.index');
    }
    public function search($search)
    {
        $users = User::search($search)->get();
        return $users;
        // return view('search', compact('_user_'));
    }
}
