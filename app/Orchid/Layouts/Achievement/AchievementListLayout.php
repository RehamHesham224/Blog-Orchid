<?php

namespace App\Orchid\Layouts\Achievement;


use Orchid\Screen\Actions\Link;

use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class AchievementListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'achievements';

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
                ->render(function ($achievement) {
                    return Link::make($achievement->id)
                        ->route('platform.achievements.edit', [$achievement->id]);
                }),
            TD::make('name', 'Name')
                ->width('100px')
                // ->sort()
                // ->filter(TD::FILTER_TEXT)
                ->render(function ($achievement) {
                    return Link::make($achievement->name)
                        ->route('platform.achievements.edit', [$achievement->id]);
                }),
            TD::make('details', 'Details')
                // ->sort()
                ->render(function ($achievement) {
                    return Link::make(\Str::limit($achievement->details, 30))
                        ->route('platform.achievements.edit', [$achievement->id]);
                })
                ->width('100px'),

            TD::make('created_at', 'Date')
                // ->sort()
                ->width('100px')
                ->render(function ($achievement) {
                    return $achievement->created_at->diffForHumans();
                }),
            TD::make('image', ' Image')
                ->width('200px')
                ->align('center')
                ->render(function ($achievement) {
                    return view('components.image', [
                        'link' => $achievement->image
                    ]);
                }),
        ];
    }
}
