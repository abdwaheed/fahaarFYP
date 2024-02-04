<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Auth::user()->id Logged In user
        $user = DB::table('users')
                ->where('id',Auth::user()->id)
                ->first();

        $skills = DB::table('skills')
                ->where('emp_id',Auth::user()->id)
                ->get();
        return  view('frontend.profile',compact('user','skills'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function profileupdate(Request $request)
    {
        // dd($request);

if (isset(  $request->image))
{
    $request->validate([
        'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ]);

    $imageName = time().'.'.$request->image->extension();

    $file = $request->image->move(public_path('images\profile'), $imageName);

    $FileUploaded = DB::table('users')
    ->where('id', Auth::user()->id)
    ->update(['image' => $imageName]) ;
}

        $leavesUpdated = DB::table('users')
              ->where('id', Auth::user()->id)
              ->update(['cnic' => $request->cnic,
                        'phone' => $request->phone,
                        'address' => $request->address,
                        'email' => $request->email,
                        'site_url' => $request->site_url,
                        'dob' => $request->birthday,
                        'gender' => $request->gender
            ]);

if(isset($request->skills)){

    DB::table('skills')->where('emp_id', Auth::user()->id)->delete();

        foreach($request->skills as $skill){
            DB::table('skills')->insert([
                "emp_id" => Auth::user()->id,
                "skill" => $skill
            ]);
        }
    }
    return redirect()->route('profile');
}



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function show(Profile $profile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        // dd(Auth::user()->id);
        $results =  DB::table('users')
        ->leftJoin('skills', 'skills.emp_id', '=', 'users.id')
        ->where('users.id',Auth::user()->id)
        // ->select('users.*', 'skills.*')
        ->get();
        $skill_list =  DB::table('skill_list')
        ->get();

        $skills = DB::table('skills')
        ->where('emp_id',Auth::user()->id)
        ->get();

        return view('frontend.profile_form',compact('results','skill_list','skills'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Profile $profile)
    {
        dd($request);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function destroy(Profile $profile)
    {
        //
    }
}
