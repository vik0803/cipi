<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Server extends Model
{

    protected $fillable = [
        'name',
        'provider',
        'location',
        'ip',
        'port',
        'username',
        'password',
        'dbroot',
        'servercode',
    ];


    public function applications() {
    	return $this->hasMany(Application::class);
    }

}
