<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Car extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'cartitle', 
        'price',
        'description',
        'image', 
        'published',
        'category_id'
    ];

    //connecting car and category models
    public function category(){
        return $this->belongsTo(Category::class);
    }
}
 