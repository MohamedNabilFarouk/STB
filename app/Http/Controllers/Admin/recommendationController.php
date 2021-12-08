<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Recommendation;

use App\Traits\imagesTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Auth;

class recommendationController extends Controller
{
    use imagesTrait;

    public function index()
    {

        $recommendations = Recommendation ::orderBy('id','desc')->paginate(10);

        return view('admin.recommendation.index', compact('recommendations'));
    }

    public function create()
    {
        return view('admin.recommendation.create');
    }

    public function store(Request $request)
    {
        // dd($request);
        $data = $request -> validate([
            'title_en' => 'required|string',
            'title_ar' => 'required|string',
            'image' => 'required',


        ]);
        $data = $request->except(['_token','add']);

        if ($request -> has('image')) {
            $image = $this -> saveImages($request -> image, 'images/recommendations');
            $data['image'] = $image;
        }
        $data['active'] = $request -> active;
        $data['show'] = $request -> show;

        Recommendation ::create($data);
        session() -> flash('success', trans('added successfully'));
        return redirect() -> route('recommendation.index');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $recommendation = Recommendation::find($id);

        return view('admin.recommendation.edit', compact('recommendation'));

    }

    public function update(Request $request, $id)
    {
        $data = $request -> validate([
            'title_en' => 'required|string',
            'title_ar' => 'required|string',
            // 'image' => 'required',
        ]);

        $recommendation = Recommendation::find($id);
        $data = $request->except(['_token','add']);


        DB::beginTransaction();

        if ($request -> has('image')) {
            if($recommendation -> image != 'default.png'){
                Storage ::disk('public_uploads') -> delete('recommendations/' . $recommendation -> image);
            }
            $image = $this -> saveImages($request -> image, 'images/recommendations');
            $data['image'] = $image;
        }
        $data['active'] = $request -> active;
        $data['show'] = $request -> show;


        $recommendation -> update($data);

        DB::commit();

        session() -> flash('success', trans('Updated Successfully'));
        return redirect() -> route('recommendation.index');
    }

    public function destroy($id)
    {
        $recommendation = Recommendation ::find($id);

        DB::beginTransaction();

        if($recommendation -> image != 'default.png'){
            Storage ::disk('public_uploads') -> delete('recommendations/' . $recommendation -> image);
        }
        $recommendation ->  delete();

        DB::commit();

        session() -> flash('success', trans('deleted successfully'));
        return redirect() -> route('recommendation.index');
    }

}
