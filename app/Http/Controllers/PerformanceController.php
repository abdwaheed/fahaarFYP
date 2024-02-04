<?php

namespace App\Http\Controllers;

use App\Models\Performance;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;



class PerformanceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->role == 'Admin'){

        $results = DB::table('performance as p')
        ->leftJoin('users as u','u.id','=','p.user_id')
        ->leftJoin('tasks as t','t.id','=','p.task_id')
        ->where('u.dept_id',Auth::user()->dept_id)
        ->select('p.*','t.name as task','u.name')
        ->get();
        }
        else {
            $results = DB::table('performance as p')
            ->leftJoin('users as u','u.id','=','p.user_id')
            ->leftJoin('tasks as t','t.id','=','p.task_id')
            ->where('u.id',Auth::user()->id)
            ->select('p.*','t.name as task','u.name')
            ->get();
        }
        return view('frontend.Performance',compact('results'));
    }
    
    public function getPerformance()
    {

        $results = DB::table('performance as p')
            ->leftJoin('users as u', 'u.id', '=', 'p.user_id')
            ->leftJoin('tasks as t', 't.id', '=', 'p.task_id')
            ->where('u.dept_id', Auth::user()->dept_id)
            ->select('p.*', 't.name as task', 'u.name')
            ->get();

        return $results;
    }

    public function getMyPerformance(Request $request)
    {
        $userId = $request->query('user_id', Auth::user()->id);
        $results = DB::table('performance as p')
            ->leftJoin('users as u', 'u.id', '=', 'p.user_id')
            ->leftJoin('tasks as t', 't.id', '=', 'p.task_id')
            ->where('u.dept_id', Auth::user()->dept_id)
            ->where('p.user_id', $userId)
            ->select('p.*', 't.name as task', 'u.name')
            ->get();

        return $results;
    }

    public function performancestatus(Request $request)
    {

        $performanceUpdated = DB::table('performance')
        ->where('id', $request->id)
        ->update(['task_status' => $request->task_status ?? '' ,
                    'comments' => $request->comments ?? '' ]);
        return redirect('performance');

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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Performance  $performance
     * @return \Illuminate\Http\Response
     */
    public function show(Performance $performance)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Performance  $performance
     * @return \Illuminate\Http\Response
     */
    public function edit(Performance $performance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Performance  $performance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Performance $performance)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Performance  $performance
     * @return \Illuminate\Http\Response
     */
    public function destroy(Performance $performance)
    {
        //
    }
}
