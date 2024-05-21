<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $table = 'group';
    protected $primaryKey = 'id';

    protected $fillable = [
        'id', 'name'
    ];



    public function contacts()
    {
        return $this->belongsToMany(Contacts::class);
    }
}
