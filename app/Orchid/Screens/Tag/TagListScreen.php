<?php

namespace App\Orchid\Screens\Tag;

use App\Models\Tag;
use App\Orchid\Layouts\Tag\TagListLayout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Screen;

class TagListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'tags' => Tag::filters()->defaultSort('created_at')->paginate(10)
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'All Tags';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Add Tag')
                ->icon('plus')
                ->method('addTag'),
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
            TagListLayout::class
        ];
    }
    public function addTag()
    {
        return redirect()->route('platform.tags.edit');
    }
}
