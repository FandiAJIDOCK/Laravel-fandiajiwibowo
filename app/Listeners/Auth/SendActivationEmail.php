<?php

namespace App\Listeners\Auth;

use App\Events\Auth\UserActivationEmail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;
use App\Mail\Auth\ActivationEmail;

class SendActivationEmail
{
    

    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  ActivationEmail  $event
     * @return void
     */
    public function handle(UserActivationEmail $event)
    {
        Mail::to($event->user->email)->send(new ActivationEmail($event->user));
    }
}
