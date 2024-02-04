<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;



class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index_old()
    {
        $users =  DB::table('users as u')->leftJoin('performance as p','u.id','=','p.user_id')
                    ->where('u.dept_id',Auth::user()->dept_id)
                    ->get();

        $skills = DB::table('skills')
                ->get();

        return view('frontend.team',compact('users','skills'));
    }


    public function index()
    {

        $users = User::with('performance')->where('users.dept_id', Auth::user()->dept->id)->get();

        // dd(  $users);

    foreach ($users as $user)
    {
        // echo $user->performance->avg('task_status')."<br>";
    }

    // dd('adsf');

    $skills = DB::table('skills')
                ->get();

        return view('frontend.team',compact('users','skills'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function myteam()
    {
        return view ('frontend.team');
    }

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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show(Team $team)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function edit(Team $team)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Team $team)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function destroy(Team $team)
    {
        //
    }
}
