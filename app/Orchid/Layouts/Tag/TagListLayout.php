<?php

namespace App\Orchid\Layouts\Tag;

use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;

class TagListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'tags';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        //'title', 'article_id'
        return [
            TD::make('id', 'ID')
                ->width('100px')
                ->render(function ($tag) {
                    return Link::make($tag->id)
                        ->route('platform.tags.edit', [$tag->id]);
                }),
            TD::make('title', 'title')
                ->width('100px')
                ->sort()
                ->filter(TD::FILTER_TEXT)
                ->render(function ($tag) {
                    return Link::make($tag->title)
                        ->route('platform.tags.edit', [$tag->id]);
                }),
        ];
    }
}
