<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Filters\Filterable;

class Category extends Model
{
    use HasFactory;
    use AsSource;
    use Filterable;
    protected $fillable = ['name', 'slug', 'description', 'image'];
    protected $allowedFilters =  ['name'];
    protected $allowedSorts = ['name'];

    public function scopeFilter($query, array $filters)
    {

        $query->when($filters['search'] ?? false, function ($query, $search) {
            $query
                ->where('name', 'Like', '%' . $search . '%')
                ->orWhere('description', 'Like', '%' . $search . '%');
        });
    }
    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function articles()
    {
        return $this->belongsToMany(Article::class);
    }
}
