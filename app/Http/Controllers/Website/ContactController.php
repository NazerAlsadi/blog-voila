<?php

namespace App\Http\Controllers\Website;
use App\Http\Controllers\controller;
use App\Models\ContactMessage;
use App\Http\Requests\ContactRequest;

class ContactController extends Controller
{
    public function show()
    {   
        return view('website.contacts.show');
    }

    public function store(ContactRequest $request)
    {
        ContactMessage::create($request->validated());

        return back()->with('success', 'Your message has been sent. Thank you!');
    }
}
