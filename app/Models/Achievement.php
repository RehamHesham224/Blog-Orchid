<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Filters\Filterable;

class Achievement extends Model
{
    use HasFactory;
    use AsSource;
    use Filterable;
    protected $fillable = ['name', 'details', 'image', 'created_at'];
    protected $allowedFilters =  ['name', 'details', 'created_at'];
    protected $allowedSorts = ['name', 'details', 'created_at'];
}
