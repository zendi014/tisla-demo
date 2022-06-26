<?php

namespace Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @see \Str
 */
class Str extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return 'Str';
    }
}
