<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Http\Requests\StoreContactRequest;
use App\Models\Article;
use App\Models\Contact;
use App\Models\Tag;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    //
    public function index()
    {
        $tags = Tag::all();
        $popular_articles = Article::where('popular', '=', 1)->get();
        return view('contact.contact-form', compact('tags', 'popular_articles'));
    }
    public function store(ContactRequest $request)
    {
        Contact::create($request->validated());
        return redirect()->back()->with('status', 'You Contacted Successfully');
    }
}
