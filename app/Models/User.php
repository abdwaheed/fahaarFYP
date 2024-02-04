<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'dept_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

 public function dept()
 {
    //  return $this->belongsTo(Department::class,'id','dept_id');
    return $this->belongsTo(Department::class,'dept_id','id');
}




public function performance()
{
   //  return $this->belongsTo(Department::class,'id','dept_id');
   return $this->hasMany(performance::class,'user_id','id');

}


// public function performancecount()
// {
//    //  return $this->belongsTo(Department::class,'id','dept_id');
//    return $this->hasMany(performance::class,'user_id','id');
//    performance::where('user_id', 0)->withCount('articles')->get();


// }


}
