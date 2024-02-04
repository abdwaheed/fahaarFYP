<?php

namespace App\Http\Controllers;

use App\Models\Leave;
use App\Models\User;
use App\Notifications\LeaveAppliedSuccessfully;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;



class LeaveController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->role == 'Admin'){
            $results = DB::table('leaves')
                        ->leftJoin('users', 'users.id', '=', 'leaves.user_id')
                        ->leftJoin('departments', 'departments.id', '=', 'users.id')
                        ->select('leaves.id','leaves.reason','leaves.apply_date','leaves.start_date',
                        'leaves.end_date','leaves.type','leaves.description','leaves.status')
                        ->get();
        }else {
            $results = DB::table('leaves')
                        ->leftJoin('users', 'users.id', '=', 'leaves.user_id')
                        ->leftJoin('departments', 'departments.id', '=', 'users.id')
                        ->select('leaves.id','leaves.reason','leaves.apply_date','leaves.start_date',
                        'leaves.end_date','leaves.type','leaves.description','leaves.status')
                        ->where('users.id',Auth::user()->id)
                        ->get();

        }
        return view('frontend.my_leave',compact('results'));
    }

    public function getLeaves()
    {
        $results = DB::table('leaves')
            ->leftJoin('users', 'users.id', '=', 'leaves.user_id')
            ->leftJoin('departments', 'departments.id', '=', 'users.id')
            ->select(
                'departments.title',
                'leaves.id',
                'leaves.reason',
                'leaves.apply_date',
                'leaves.start_date',
                'leaves.end_date',
                'leaves.type',
                'leaves.description',
                'leaves.status',
                'users.name'
            )
            ->get();

        return $results;
    }

    public function getMyLeaves(Request $request)
    {
        $userId = $request->query('user_id', Auth::user()->id);
        $results = DB::table('leaves')
            ->leftJoin('users', 'users.id', '=', 'leaves.user_id')
            ->where('leaves.user_id', $userId)
            ->leftJoin('departments', 'departments.id', '=', 'users.id')
            ->select(
                'departments.title',
                'leaves.id',
                'leaves.reason',
                'leaves.apply_date',
                'leaves.start_date',
                'leaves.end_date',
                'leaves.type',
                'leaves.description',
                'leaves.status',
                'users.name'
            )
            ->get();

        return $results;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('frontend.leave_form');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        DB::table('leaves')->insert([
            "user_id" => Auth::user()->id,
            "apply_date" => date('Y-m-d') ,
            "reason" => $request->reason ?? '',
            "status" => "Pending",
            "type" => $request->type ?? '' ,
            "description" => $request->description ?? '',
            "start_date" => $request->start_date ?? '' ,
            "end_date" => $request->end_date ?? '' ,
        ]);

        $empadmin = DB::table('users')
            ->where('dept_id',Auth::user()->dept_id)
            ->where('role','Admin')->first();

        User::find($empadmin->id)->notify(new LeaveAppliedSuccessfully(Auth::user()->name));

        return redirect('leave');

    }

    public function leavestatus(Request $request){
        // dd($request);
        $leavesUpdated = DB::table('leaves')
              ->where('id', $request->id)
              ->update(['status' => $request->status ]);

              return redirect('leave');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function show(Leave $leave)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function edit(Leave $leave)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Leave $leave)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Http\Response
     */
    public function destroy(Leave $leave)
    {
        //
    }
}
