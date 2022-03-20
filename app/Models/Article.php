<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Filters\Filterable;

class Article extends Model
{
    use HasFactory;
    use AsSource;
    use Filterable;
    protected $fillable = ['name', 'body', 'image', 'slug', 'created_at', 'status', 'user_id'];
    protected $allowedFilters =  ['name', 'body', 'created_at'];
    protected $allowedSorts = ['name', 'body', 'created_at'];
    public function users()
    {
        return $this->belongsTo(User::class);
    }
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }
    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }
}
