<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToModel;
use App\Models\Contacts;

class ImportContacts implements ToModel
{
    
    public function model(array $row)
    {
        //
        $user = auth()->user();
         return new Contacts([
            'name' => $row[0],
            'phone' => $row[1],
            'email' => $row[2],
            'added_by' => $user->id,

            // Add more columns as needed
        ]);
    }
}
