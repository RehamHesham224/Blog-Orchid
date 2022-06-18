<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Filters\Filterable;

class Contact extends Model
{
    use HasFactory;
    use AsSource;
    use Filterable;
    protected $fillable = ['name', 'subject', 'email', 'body'];
    protected $allowedFilters =  ['name', 'subject', 'email', 'body'];
    protected $allowedSorts = ['name', 'subject', 'email', 'body'];
}
