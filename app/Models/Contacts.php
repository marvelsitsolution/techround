<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Contacts extends Model
{
    protected $table = 'contacts';
    protected $primaryKey = 'id';

    protected $fillable = [
        'id', 'name', 'phone', 'email', 'added_by'
    ];


    public function group()
    {
        return $this->belongsToMany(Group::class);
    }
}
