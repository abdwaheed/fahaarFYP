<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Laravel\Ui\Presets\React;
use App\Notifications\TaskCreatedSuccessful;
use App\Notifications\TaskSubmittedSuccessfully;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $results =  DB::table('tasks')
                    ->leftJoin('users', 'tasks.assign_to_id', '=', 'users.id')
                    ->where('users.dept_id',Auth::user()->dept_id)
                    ->select('tasks.*', 'users.name as username')->get();

        $users = DB::table('users as u')
                ->where('u.dept_id',Auth::user()->dept_id)
                ->select('u.id','u.name')->get();

        return view('frontend.tasks',compact('results','users'));
    }

    public function mytask()
    {
       $results = DB::table('tasks as t')
       ->leftjoin('users as u','u.id', '=' ,'t.assign_to_id')
       ->where('t.assign_to_id',Auth::user()->id)
       ->select('t.name','t.description','t.start_date','t.end_date','t.type','t.task_status','t.id','t.task_image' )
       ->get();
        return view('frontend.my_task',compact('results'));
    }

    public function taskupload()
    {
        return view('frontend.taskupload');
    }

    public function taskstatus(Request $request){

        // dd($request);
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $imageName = time().'.'.$request->image->extension();

        $file = $request->image->move(public_path('images\tasks'), $imageName);

        $taskUpdated = DB::table('tasks')
              ->where('id', $request->id)
              ->update(['task_status' => 'Submited'
                ,'task_image'=>$imageName]);

        $task = DB::table('tasks')->where('id',$request->id)->first();

        // Notification
        User::find($task->created_by)->notify(new TaskSubmittedSuccessfully($task->name));

        return redirect('mytask');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $results = DB::table('users')
                ->where('users.dept_id',Auth::user()->dept_id)
                ->get();

        return view('frontend.task_form',compact('results'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //    task_status   assign_to_id
        $taskStored = DB::table('tasks')->insert([
            "name" => $request->name,
            "type" => $request->type ?? '' ,
            "description" => $request->description ?? '',
            "start_date" => $request->start_date ?? '' ,
            "end_date" => $request->end_date ?? '' ,
            "task_status" => "Open",
            "assign_to_id" => $request->assign_to_id ?? '' ,
            "created_by" => Auth::user()->id
        ]);

        $id = DB::getPdo()->lastInsertId();

        User::find($request->assign_to_id)->notify(new TaskCreatedSuccessful($request->name));

        $taskStored = DB::table('performance')->insert([
            "task_id" => $id,
            "user_id" => $request->assign_to_id ?? '' ,
            "task_status" => '0'
            ]);


        return redirect('task');
    }

    public function reassign(Request $request){

        $taskUpdated = DB::table('tasks')
              ->where('id', $request->taskid)
              ->update(['assign_to_id' => $request->reAssignUser]);
            // remove previous records
        $performaceremoved = DB::table('performance')
            ->where('task_id',$request->taskid)
            ->delete();

        $performanceStored = DB::table('performance')
            ->insert(["task_id" => $request->taskid,
                    "user_id" => $request->reAssignUser ?? '' ,
                    "task_status" => '0'
                ]);

        return redirect('task');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function show(Task $task)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function edit(Task $task)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Task $task)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function destroy(Task $task)
    {
        //
    }
}