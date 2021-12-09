<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderRecommendation extends Model
{
    //
    protected $guarded=[];
    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }
    public function recommendation(){
        return $this->belongsTo(Recommendation::class,'recommendation_id');
    }
}
