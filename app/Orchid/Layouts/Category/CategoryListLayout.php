<?php

namespace App\Orchid\Layouts\Category;

use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

use Orchid\Screen\Actions\Link;

class CategoryListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'categories';

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
                ->render(function ($category) {
                    return Link::make($category->id)
                        ->route('platform.categories.edit', [$category->id]);
                }),
            TD::make('name', 'Name')
                ->width('100px')
                ->sort()
                ->filter(TD::FILTER_TEXT)
                ->render(function ($category) {
                    return Link::make($category->name)
                        ->route('platform.categories.edit', [$category->id]);
                }),
            TD::make('slug', 'Slug')
                ->width('100px')
                ->render(function ($category) {
                    return Link::make($category->slug)
                        ->route('platform.categories.edit', [$category->id]);
                }),
            TD::make('image', ' Image')
                ->width('200px')
                ->align('center')
                ->render(function ($category) {
                    return view('components.image', [
                        'link' => $category->image
                    ]);
                }),
            TD::make('Comments', 'Category Comments')
                ->width('200')
                ->sort()->filter(TD::FILTER_TEXT)
                ->cantHide()
                ->render(function ($category) {
                    return Link::make('Show Comments')
                        ->icon('text-middle')
                        ->route('platform.comments.list', [$category->id]);
                }),
        ];
    }
}
