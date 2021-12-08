<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Recommendation;
use App\RecommendationOrder;
use Carbon\Carbon;
use App\Http\Resources\ProductCollection;
use BeyondCode\Vouchers\Models\Voucher;
use Validator;
use APP\User;

use BeyondCode\Vouchers\Facades\vouchers as Vouchers;


class RecommendationController extends Controller
{
    //
    public function getRecommendations(){
            $Recommendation =  Recommendation::where('active',1)->get();
            return response()->json(['success'=>'true', 'data'=>$Recommendation]);
    }

    public function buyRecommendation(Request $request){

        $validator = Validator::make($request->all(), [
            'user_id'=>'required',
            'recommendation_id'=>'required',
            'total'=>'required',
        ]);

        if ($validator->fails()) {

            return response()->json(['success'=>'false', 'error'=>$validator->messages()]);

        } else {
           $user = User::find($request->user_id);
           if($user->balance < $request->total){
            return response()->json(['success'=>'false', 'error'=>'No Enough Coins']);
           }
           $data=$request->all();
        $order= RecommendationOrder::create($data);
        return response()->json(['success'=>'true', 'data'=>$order]);
        }




    }

    // public function getProductCategory($id){
    //     $products= Product::where('category_id',$id)->get();
    //     return response()->json(['success'=>'true', 'data'=>ProductCollection::collection($products)]);
    // }

    // public function getProduct($id){
    //     $product= Product::where('id',$id)->with('category')->get();
    //     return response()->json(['success'=>'true', 'data'=>ProductCollection::collection($products)]);
    // }

    // public function search($product){
    //     $products = Product::where('name_en','Like','%'.$product.'%')->orWhere('name_ar','Like','%'.$product.'%')->get();
    // // dd($products);
    // return response()->json(['success'=>'true', 'data'=>ProductCollection::collection($products)]);

    // }

    // public function promocode( Request $request){
    //     $copon = Voucher ::where([['code',$request->code],['expires_at', '>=', Carbon::now()]]) ->first();

    //     if($copon){
    //         $discount=   $copon->data->get('discount');
    //         return response()->json(['success'=>'true', 'data'=>$discount]);
    //     }else{
    //         return response()->json(['success'=>'false', 'data'=>'Code not valid']);
    //     }

    // }



}
