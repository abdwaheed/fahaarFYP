<?php

namespace App\Http\Controllers;

use App\Models\RequestPortal;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
// use DB;
use Illuminate\Support\Facades\DB;


class RequestPortalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd('asdf');
        return view ('frontend.request_portal');

    }

    public function myresources()
    {
        // dd(Auth::user()->role);
        if (Auth::user()->role != 'Admin')
        {
            $sql1= "emp_id";
            $sql2 = Auth::user()->id;
            $op = '=';
        }else {
            $sql1 = "emp_id";
            $sql2 = Auth::user()->id;
            $op = '!=';
        }
        // \DB::connection()->enableQueryLog();

    $results = DB::table('request_resource AS req')
                ->leftjoin('users AS u','u.id', '=', 'req.emp_id')
                ->select('req.*','u.name')
                ->where($sql1, $op, $sql2)
                ->get();
                // $queries = \DB::getQueryLog();

    return view ('frontend.my_resources',compact('results'));
    }

    public function getResources()
    {
        // \DB::connection()->enableQueryLog();

        $results = DB::table('request_resource AS req')
            ->leftjoin('users AS u', 'u.id', '=', 'req.emp_id')
            ->select('req.*', 'u.name')
            ->get();
        // $queries = \DB::getQueryLog();

        return response()->json($results);
    }

    public function getMyResources()
    {
        // dd(Auth::user()->role);
        if (Auth::user()->role != 'Admin') {
            $sql1 = "emp_id";
            $sql2 = Auth::user()->id;
            $op = '=';
        } else {
            $sql1 = "emp_id";
            $sql2 = Auth::user()->id;
            $op = '!=';
        }
        // \DB::connection()->enableQueryLog();

        $results = DB::table('request_resource AS req')
            ->leftjoin('users AS u', 'u.id', '=', 'req.emp_id')
            ->select('req.*', 'u.name')
            ->where($sql1, $op, $sql2)
            ->get();
        // $queries = \DB::getQueryLog();

        return $results;
    }

    public function resourcestatus (Request $request){

        $taskUpdated = DB::table('request_resource')
              ->where('id', $request->id)
              ->update(['approval' => $request->status]);

        return redirect('myresources');
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
        DB::table('request_resource')->insert([
            'type' => $request->type ?? '' ,
            'apply_date' => $request->apply_date ?? '' ,
            "emp_id" => Auth::user()->id ?? '' ,
            "item" => $request->item ?? ''  ,
            "building" => $request->building ?? '' ,
            "floor" => $request->floor ?? '' ,
            "room" => $request->room ?? ''  ,
            "description" => $request->description ?? ''
        ]);

        return redirect('requestportal');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RequestPortal  $requestPortal
     * @return \Illuminate\Http\Response
     */
    public function show(RequestPortal $requestPortal)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\RequestPortal  $requestPortal
     * @return \Illuminate\Http\Response
     */
    public function edit(RequestPortal $requestPortal)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\RequestPortal  $requestPortal
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, RequestPortal $requestPortal)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\RequestPortal  $requestPortal
     * @return \Illuminate\Http\Response
     */
    public function destroy(RequestPortal $requestPortal)
    {
        //
    }
}
