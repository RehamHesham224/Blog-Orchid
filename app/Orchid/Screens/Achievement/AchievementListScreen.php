<?php

namespace App\Orchid\Screens\Achievement;

use App\Models\Achievement;
use App\Orchid\Layouts\Achievement\AchievementListLayout;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;

class AchievementListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'achievements' => Achievement::filters()->defaultSort('created_at')->paginate(10)
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'All Achievements';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): array
    {
        return [
            Button::make('Add Achievement')
                ->icon('plus')
                ->method('addAchievement')
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
            AchievementListLayout::class,
        ];
    }
    public function addAchievement()
    {
        return redirect()->route('platform.achievements.edit');
    }
}
