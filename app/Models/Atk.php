<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Atk extends Model
{
    use HasFactory;

    protected $table="Atk";

    protected $fillable = [
        "product_name",
        "product_price",
        "product_image",
        "product_stock"

    ];
}
