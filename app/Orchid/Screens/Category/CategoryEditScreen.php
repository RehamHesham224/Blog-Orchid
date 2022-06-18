<?php

namespace App\Orchid\Screens\Category;

use App\Models\Article;
use App\Models\Category;
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

class CategoryEditScreen extends Screen
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

    public function query(Category $category): iterable
    {
        $this->exists = $category->exists;
        if ($this->exists) {
            $this->name = 'Edit category';
        }

        return [
            'category' => $category,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Edit Category';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Category')
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
                Input::make('category.name')
                    ->title('Name')
                    ->required()
                    ->placeholder('category name')
                    ->help('Specify The category name.'),
                Input::make('category.slug')
                    ->title('Slug')
                    ->required()
                    ->placeholder('category title')
                    ->help('Specify The category title.'),
                Relation::make('category.articles.')
                    ->title('Article')
                    ->multiple()
                    ->fromModel(Article::class, 'name'),
                Quill::make('category.description')
                    ->title('body')
                    ->required()
                    ->placeholder('article body')
                    ->help('Specify The article body.'),
                Cropper::make('category.image')
                    ->targetId()
                    ->targetRelativeUrl()
                    ->height(400)
                    ->width(400)
                    ->title('Image')
                    ->horizontal()
                    ->help('Specify The category avatar.'),
            ]),
        ];
    }
    public function createOrUpdate(Category $category, Request $request)
    {
        $request->validate([
            'category.name' => 'required|string',
            'category.description' => 'required|string',
            'category.image' => 'nullable',
            'categories.' => 'nullable'
        ]);
        $category->fill($request->get('category'));
        $category->save();
        $category->articles()->sync(request('category.articles'));
        Alert::info('You have successfully updated a category.');

        return redirect()->route('platform.categories.list');
    }
    public function remove(Category $category)
    {
        $category->delete()
            ? Alert::info('You have successfully deleted the category.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.categories.list');
    }
}
