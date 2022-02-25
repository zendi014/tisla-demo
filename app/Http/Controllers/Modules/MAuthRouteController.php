<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\Models\Modules\MAuthRoute;

class MAuthRouteController extends Controller
{
    public static function findById($inst_category, $inst_level){
        return MAuthRoute::where('inst_category', $inst_category)
                            ->where('inst_level', $inst_level)
                            ->first();
    }
}
