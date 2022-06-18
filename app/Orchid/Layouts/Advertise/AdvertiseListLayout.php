<?php

namespace App\Orchid\Layouts\Advertise;

use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;

class AdvertiseListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'advertises';

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
                ->render(function ($advertise) {
                    return Link::make($advertise->id)
                        ->route('platform.advertises.edit', [$advertise->id]);
                }),
            TD::make('image', ' Image')
                ->width('200px')
                ->align('center')
                ->render(function ($advertise) {
                    return view('components.image', [
                        'link' => $advertise->image
                    ]);
                }),
        ];
    }
}
