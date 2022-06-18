<?php

namespace App\Orchid\Screens\Article;

use App\Models\Article;
use App\Models\Category;
use App\Models\Comment;
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
use Orchid\Screen\Fields\CheckBox;
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
use Orchid\Screen\Fields\Select;

class ArticleEditScreen extends Screen
{
    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Add Article';
    }
    /**
     * @var bool
     */
    public $exists = false;
    public $author = "Reham";
    /**
     * Query data.
     *
     * @return array
     */

    public function query(Article $article): iterable
    {
        $this->exists = $article->exists;
        if ($this->exists) {
            $this->name = 'Edit Article';
            $this->author = $article->users->name ?? "Reham";
        }

        return [
            'article' => $article,
        ];
    }
    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Article')
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
                Input::make('article.name')
                    ->title('Name')
                    ->required()
                    ->placeholder('article title')
                    ->help('Specify The article title.'),
                Input::make('article.slug')
                    ->title('Slug')
                    ->required()
                    ->placeholder('article title')
                    ->help('Specify The article title.'),
                Quill::make('article.body')
                    ->title('body')
                    ->required()
                    ->placeholder('article body')
                    ->help('Specify The article body.'),
                CheckBox::make('article.popular')
                    ->value(1)
                    ->title('Popular')
                    ->placeholder('Popular Article')
                    ->help('Specify Popular Article'),
                Relation::make('article.user_id')
                    ->title('Author')
                    ->fromModel(User::class, 'name'),
                Relation::make('article.categories.')
                    ->fromModel(Category::class, 'name')
                    ->multiple()
                    ->title('Related Categories'),
                Relation::make('article.tags.')
                    ->fromModel(Tag::class, 'title')
                    ->multiple()
                    ->title('Related Tags'),
                Cropper::make('article.image')
                    ->targetId()
                    ->targetRelativeUrl()
                    ->height(400)
                    ->width(400)
                    ->title('Image')
                    ->horizontal()
                    ->help('Specify The Article avatar.'),
            ]),

        ];
    }
    public function createOrUpdate(Article $article, Request $request)
    {
        $request->validate([
            'article.name' => 'required|string',
            'article.body' => 'required|string',
            'article.popular' => 'nullable',
            'article.image' => 'nullable',
            'categories.' => 'nullable',
            'comments.' => 'nullable',
            'tags.' => 'nullable',
        ]);
        $article->fill($request->get('article'));
        $article->save();
        $article->categories()->sync(request('article.categories'));
        // $article->comments()->sync(request('article.comments'));
        $article->tags()->sync(request('article.tags'));

        Alert::info('You have successfully updated a article.');

        return redirect()->route('platform.articles.list');
    }
    public function remove(Article $article)
    {
        $article->delete()
            ? Alert::info('You have successfully deleted the article.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.articles.list');
    }
}
