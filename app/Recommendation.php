<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recommendation extends Model
{
    //
    protected $guarded=[];
    public function getImageAttribute($value)
    {
        return asset('images/recommendations/' . $value);
    } // end of get image attribute
}
