<?php

namespace App\Orchid\Screens\Tag;

use App\Models\Article;
use App\Models\Tag;
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
use Orchid\Screen\Screen;
use Orchid\Screen\TD;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Toast;

class TagEditScreen extends Screen
{

    /**
     * @var bool
     */
    public $exists = false;
    /**
     * Query data.
     *
     * @return array
     */
    public function query(Tag $tag): iterable
    {
        $this->exist = $tag->exist;
        if ($this->exist) {
            $this->name = 'Edit Tag';
        }

        return [
            'tag' => $tag
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Add Tag';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Tag')
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
                Input::make('tag.title')
                    ->title('title')
                    ->required()
                    ->placeholder('tag title')
                    ->help('Specify The tag title.'),
                Relation::make('tag.articles.')
                    ->title('Article')
                    ->fromModel(Article::class, 'name'),
            ]),

        ];
    }
    public function createOrUpdate(Tag $tag, Request $request)
    {
        $request->validate([
            'tag.title' => 'required|string',
            'articles.' => 'nullable',
        ]);
        $tag->fill($request->get('tag'));
        // $tag->saveImageAsWebp();
        $tag->save();
        Alert::info('You have successfully updated a tag.');

        return redirect()->route('platform.tags.list');
    }
    public function remove(Tag $tag)
    {
        $tag->delete()
            ? Alert::info('You have successfully deleted the tag.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.tags.list');
    }
}
