<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Filters\Filterable;

class Tag extends Model
{
    use HasFactory;
    use AsSource;
    use Filterable;
    protected $fillable = ['title', 'article_id'];
    protected $allowedFilters =   ['title'];
    protected $allowedSorts =  ['title'];
    public function articles()
    {
        return $this->belongsToMany(Article::class);
    }
}
