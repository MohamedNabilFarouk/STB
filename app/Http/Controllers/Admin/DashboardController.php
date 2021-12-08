<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Order;
use App\Product;
use App\resturants;
use App\DeliveryBoy;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Auth;

class DashboardController extends Controller
{
    //
    public function index(){

        return view('admin.dashboard');
    }

}
