<?php

namespace App\Providers;

use Illuminate\Auth\Artikel\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\ArtikelerviceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class ArtikelerviceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any artikel for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
