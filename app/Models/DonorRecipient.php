<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DonorRecipient extends Model
{
    use HasFactory;

    protected $table = 'part_recipients';


    public function toss(){
        DonorRecipient::all();
    }
}
