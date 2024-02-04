<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Notifications\DepositSuccessful;
use App\Models\Deposit;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class DepositController extends Controller
{
    //
    public function __construct()
{
    $this->middleware('auth');
}


public function deposit(Request $request){
    $deposit = Deposit::create([
        'user_id' =>Auth::user()->id,
        'amount'  => $request->amount
    ]);
    User::find(Auth::user()->id)->notify(new DepositSuccessful($deposit->amount));

    return redirect()->back()->with('status','Your deposit was successful!');
}

public function markAsRead(){
    Auth::user()->unreadNotifications->markAsRead();
    return redirect()->back();
}


}
