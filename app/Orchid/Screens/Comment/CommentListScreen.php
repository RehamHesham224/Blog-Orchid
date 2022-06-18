<?php

namespace App\Orchid\Screens\Comment;

use App\Models\Comment;
use App\Orchid\Layouts\Comment\CommentListLayout;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;

class CommentListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'comments' => Comment::filters()->defaultSort('created_at')->paginate(10)

        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'All Comments';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Add Comment')
                ->icon('plus')
                ->method('addComment'),
        ];
    }
    //'title', 'body', 'article_id'
    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            CommentListLayout::class
        ];
    }
    public function addComment()
    {
        return redirect()->route('platform.comments.edit');
    }
}
