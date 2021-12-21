<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Academy extends Model
{
    //
    protected $guarded=[];

    public function levels(){
        return $this->belongsTo(Level::class,'level','id');
    }
}
