<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Filters\Filterable;

class Comment extends Model
{
    use HasFactory;
    use AsSource;
    use Filterable;
    protected $fillable = ['title', 'body', 'user_id', 'article_id', 'created_at'];
    protected $allowedFilters =  ['title', 'body'];
    protected $allowedSorts = ['title', 'body'];
    public function articles()
    {
        return $this->belongsTo(Article::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
