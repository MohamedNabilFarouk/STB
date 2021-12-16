<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Academy;

use App\Traits\imagesTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Auth;

class AcademyController extends Controller
{
    use imagesTrait;

    public function index()
    {

        $academies = Academy::orderBy('id','desc')->paginate(10);

        return view('admin.academy.index', compact('academies'));
    }

    public function create()
    {
        return view('admin.academy.create');
    }

    public function store(Request $request)
    {
        // dd($request);
        $data = $request -> validate([
            'title_en' => 'required|string',
            'title_ar' => 'string',
            'des_en' => 'required|string',
            'des_ar' => 'string',
            'price' => 'required'|'numeric',
            'min_level' => 'required'|'numeric',
        ]);
        $data = $request->except(['_token','add']);
        Academy ::create($data);
        session() -> flash('success', trans('added successfully'));
        return redirect() -> route('academy.index');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $academy = Academy::find($id);

        return view('admin.academy.edit', compact('level'));

    }

    public function update(Request $request, $id)
    {
        $data = $request -> validate([
            'title_en' => 'required|string',
            'title_ar' => 'string',
            'des_en' => 'required|string',
            'des_ar' => 'string',
            'price' => 'required'|'numeric',
            'min_level' => 'required'|'numeric',
        ]);

        $academy = Academy::find($id);
        $data = $request->except(['_token','add']);


        DB::beginTransaction();



        $academy -> update($data);

        DB::commit();

        session() -> flash('success', trans('Updated Successfully'));
        return redirect() -> route('academy.index');
    }

    public function destroy($id)
    {
        $academy = Academy ::find($id);

        DB::beginTransaction();
        $academy ->  delete();

        DB::commit();

        session() -> flash('success', trans('deleted successfully'));
        return redirect() -> route('academy.index');
    }



}
