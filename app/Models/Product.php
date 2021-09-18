<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';
    protected $guarded = array();
    
    protected $fillable = [
        'status',
        'name',
        'image',
        'category_id',
        'price',
        'description',
    ];


    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
}
