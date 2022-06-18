<?php

namespace App\Orchid\Screens\Comment;

use App\Models\Article;
use App\Models\Comment;
use Orchid\Screen\Screen;
use App\Orchid\Layouts\Role\RoleEditLayout;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Str;
use Orchid\Platform\Models\User;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Cropper;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Fields\Picture;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\TD;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Toast;

class CommentEditScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(Comment $comment): iterable
    {
        $this->exists = $comment->exists;
        if ($this->exists) {
            $this->name = 'Edit Comment';
        }

        return [
            'comment' => $comment,
        ];
    }
    /**
     * @var bool
     */
    public $exists = false;
    /**
     * Query data.
     *
     * @return array
     */
    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Edit Comment';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Comment')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->exists),

            Button::make('Remove')
                ->icon('trash')
                ->confirm('are you sure you want to delete?')
                ->method('remove')
                ->canSee($this->exists),

            Button::make('Save')
                ->icon('check')
                ->method('createOrUpdate')
                ->canSee($this->exists),
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
            Layout::rows([
                Input::make('comment.title')
                    ->title('title')
                    ->required()
                    ->placeholder('comment title')
                    ->help('Specify The comment title.'),
                Quill::make('comment.body')
                    ->title('body')
                    ->required()
                    ->placeholder('comment body')
                    ->help('Specify The comment body.'),
                Relation::make('comment.user_id')
                    ->title('Author')
                    ->fromModel(User::class, 'name'),
                Relation::make('comment.article_id')
                    ->title('Comment')
                    ->fromModel(Article::class, 'name'),

            ])
        ];
    }
    public function createOrUpdate(Comment $comment, Request $request)
    {
        $request->validate([
            'comment.title' => 'required|string',
            'comment.body' => 'required|string',
            'comment.user_id' => 'required',
            'comment.article_id' => 'required',
        ]);
        $comment->fill($request->get('comment'));
        // $comment->saveImageAsWebp();
        $comment->save();
        Alert::info('You have successfully updated a comment.');

        return redirect()->route('platform.comments.list');
    }
    public function remove(Comment $comment)
    {
        $comment->delete()
            ? Alert::info('You have successfully deleted the comment.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.comments.list');
    }
}
