<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ContactRequest;
use App\Http\Resources\ContactResource;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    //
    //
    public function store(ContactRequest $request)
    {
        $contact = Contact::create($request->validated());
        return new ContactResource($contact);
    }
}
