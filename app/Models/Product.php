<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table = "products";

    public function images(){
        return $this->hasMany(ProductImage::class, 'product_id');
    }

    public function productTags(){
        return $this->hasMany(ProductTag::class, 'product_id');
    }
    public function tags(){
        return $this->belongsToMany(Tag::class, 'product_tags', 'product_id', 'tag_id');
    }

    public function category(){
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function orderProduct(){
        return $this->hasMany(OrderProduct::class, 'product_id');
    }

}
