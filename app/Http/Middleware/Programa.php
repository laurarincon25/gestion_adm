<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Support\Facades\Auth;

class Programa
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    protected $auth;

    /**
     * Create a new middleware instance.
     *
     * @param  Guard  $auth
     * @return void
     */
    public function __construct(Guard $auth)
    {
        $this->auth = $auth;
    }
    public function handle($request, Closure $next)
    {
        if(Auth::user())
        {
            if ($this->auth->user()->hasRole('directoradm') || $this->auth->user()->hasRole('estudiante') || $this->auth->user()->hasRole('directorpro') || $this->auth->user()->hasRole('admin'))
            {
                return $next($request);
            }
            else
            {
                abort(404);
            }
        }
    }
}
