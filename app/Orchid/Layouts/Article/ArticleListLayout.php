<?php

namespace App\Orchid\Layouts\Article;

use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Picture;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class ArticleListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'articles';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): array
    {
        return [

            TD::make('id', 'ID')
                ->width('100px')
                ->render(function ($article) {
                    return Link::make($article->id)
                        ->route('platform.articles.edit', [$article->id]);
                }),
            TD::make('name', 'Name')
                ->width('100px')
                ->sort()
                ->filter(TD::FILTER_TEXT)
                ->render(function ($article) {
                    return Link::make($article->name)
                        ->route('platform.articles.edit', [$article->id]);
                }),
            TD::make('body', 'Body')
                ->sort()
                ->render(function ($article) {
                    return Link::make(\Str::limit($article->body, 30))
                        ->route('platform.articles.edit', [$article->id]);
                })
                ->width('100px'),
            TD::make('slug', 'Slug')
                ->width('100px')
                ->render(function ($article) {
                    return Link::make($article->slug)
                        ->route('platform.articles.edit', [$article->id]);
                }),
            TD::make('created_at', 'created_at')
                ->sort()
                ->width('100px')
                ->render(function ($article) {
                    return $article->created_at->diffForHumans();
                }),
            TD::make('image', ' Image')
                ->width('200px')
                ->align('center')
                ->render(function ($article) {
                    return view('components.image', [
                        'link' => $article->image
                    ]);
                }),




        ];
    }
}
