<?php

namespace App\Orchid\Layouts\Comment;

use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;

class CommentListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'comments';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [

            TD::make('id', 'ID')
                ->width('100px')
                ->render(function ($comment) {
                    return Link::make($comment->id)
                        ->route('platform.comments.edit', [$comment->id]);
                }),
            TD::make('title', 'Title')
                ->width('100px')
                ->sort()
                ->filter(TD::FILTER_TEXT)
                ->render(function ($article) {
                    return Link::make($article->title)
                        ->route('platform.articles.edit', [$article->id]);
                }),
            TD::make('body', 'Body')
                ->sort()
                ->render(function ($article) {
                    return Link::make(\Str::limit($article->body, 30))
                        ->route('platform.articles.edit', [$article->id]);
                })
                ->width('100px'),
        ];
    }
}
