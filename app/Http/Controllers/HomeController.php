<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // Admin Qureies
        if (Auth::user()->role == 'Admin'){

        $resourceCount = DB::table('request_resource as rr')
                        ->leftjoin('users as u','u.id', '=' ,'rr.emp_id')
                        ->where('u.dept_id',Auth::user()->dept_id)
                        ->count();
        $leaveCount = DB::table('leaves as l')
                        ->leftjoin('users as u','u.id', '=' ,'l.user_id')
                        ->where('u.dept_id',Auth::user()->dept_id)
                        ->count();
        $taskCount = DB::table('tasks as t')
                        ->leftjoin('users as u','u.id', '=' ,'t.assign_to_id')
                        ->where('u.dept_id',Auth::user()->dept_id)
                        ->count();
        $teamCount = DB::table('users as u')
                        ->where('u.dept_id',Auth::user()->dept_id)
                        ->count();
        $tasks = DB::table('tasks as t')
                        ->leftjoin('users as u','u.id', '=' ,'t.assign_to_id')
                        ->where('u.dept_id',Auth::user()->dept_id)
                        ->select('t.start_date','t.end_date','t.task_status','t.name as task_name')
                        ->get();
        $performances = DB::table('performance as p')
                        ->leftJoin('users as u','u.id','=','p.user_id')
                        ->leftJoin('tasks as t','t.id','=','p.task_id')
                        ->where('u.dept_id',Auth::user()->dept_id)
                        ->select('p.*','t.name as task','u.name')
                        ->get();
    }else {
                    $resourceCount = DB::table('request_resource as rr')
                    ->leftjoin('users as u','u.id', '=' ,'rr.emp_id')
                    ->where('u.id',Auth::user()->id)
                    ->count();
            $leaveCount = DB::table('leaves as l')
                    ->leftjoin('users as u','u.id', '=' ,'l.user_id')
                    ->where('u.id',Auth::user()->id)
                    ->count();
            $taskCount = DB::table('tasks as t')
                    ->leftjoin('users as u','u.id', '=' ,'t.assign_to_id')
                    ->where('u.id',Auth::user()->id)
                    ->count();
            $teamCount = DB::table('users as u')
                    ->where('u.id',Auth::user()->id)
                    ->count();
            $tasks = DB::table('tasks as t')
                    ->leftjoin('users as u','u.id', '=' ,'t.assign_to_id')
                    ->where('u.id',Auth::user()->id)
                    ->select('t.start_date','t.end_date','t.task_status','t.name as task_name')
                    ->get();
            $performances = DB::table('performance as p')
                    ->leftJoin('users as u','u.id','=','p.user_id')
                    ->leftJoin('tasks as t','t.id','=','p.task_id')
                    ->where('u.id',Auth::user()->id)
                    ->select('p.*','t.name as task','u.name')
                    ->get();

    }

        return view ('frontend.dashboard',compact('resourceCount','leaveCount','taskCount','teamCount','tasks','performances'));
    }

    public function notificationtesting(){
        return view ('home');
    }

    public function registeruser() {
        return view ('auth.register');
    }

    protected function registerusercreate(Request $data)
    {
        // 'dept_id' => Auth::user()->dept->id
// dd($data);

$password = Hash::make($data['password']);

        User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => $password,
            'dept_id' => Auth::user()->dept->id ?? '0'
        ]);

        // return "User Created ";
        return redirect()->route('home');
    }

}

