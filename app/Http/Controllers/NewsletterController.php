<?php

namespace App\Http\Controllers;

use App\Services\MailchimpNewsletter;
use App\Services\Newsletter;
use Dotenv\Exception\ValidationException;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException as ValidationValidationException;
use MailchimpMarketing\ApiClient;

class NewsletterController extends Controller
{
    //
    public function __invoke(Newsletter $newsletter)
    {
        // dd($newsletter);
        // dump($newsletter);

        //validation
        request()->validate(['email' => 'required|email']);
        try {
            //add subscriber to list
            $newsletter->subscribe(request('email'));
        } catch (\Exception $e) {
            //catch errors
            ValidationValidationException::withMessages([
                'email' => 'this email could not be added'
            ]);
        }

        // var_dump($response);
        return redirect('/')->with('success', 'You are logged in our newsletter');
    }
}
