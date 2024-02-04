<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Performance extends Model
{
    use HasFactory;

    protected $table = 'performance';


    public function performancecount()
    {
       //  return $this->belongsTo(Department::class,'id','dept_id');
       return performance::avg('task_status');

    }


}
