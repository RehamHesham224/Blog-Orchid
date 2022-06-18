<?php

namespace App\Orchid\Screens\Advertise;

use App\Models\Advertise;
use App\Orchid\Layouts\Advertise\AdvertiseListLayout;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;

class AdvertiseListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'advertises' => Advertise::all(),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'All Advertises';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Add Advertise')
                ->icon('plus')
                ->method('addAdvertise'),
        ];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            AdvertiseListLayout::class,
        ];
    }
    public function addAdvertise()
    {
        return redirect()->route('platform.advertises.edit');
    }
}
