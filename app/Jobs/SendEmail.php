<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SendEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $user;
    /**
     * Create a new job instance.
     */
    public function __construct($user)
    {
        //
        $this->user = $user ;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        //
        
        Mail::to($this->user->email)->send(new \App\Mail\WelcomeEmail($this->user));
    }
}
