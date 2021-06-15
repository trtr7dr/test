<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Help extends Model {

    protected $table = "test_table";
    protected $fillable = ['name', 'time', 'x', 'y', 'address'];

}
