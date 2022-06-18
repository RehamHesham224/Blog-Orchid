<?php

namespace App\Orchid\Screens\Achievement;

use App\Models\Achievement;
use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Cropper;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Quill;
use Orchid\Screen\Actions\Button;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Relation;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Toast;

class AchievementEditScreen extends Screen
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

    /**
     * Query data.
     *
     * @return array
     */
    public function query(Achievement $achievement): iterable
    {
        $this->exists = $achievement->exists;
        if ($this->exists) {
            $this->name = 'Edit achievement';
        }

        return [
            'achievement' => $achievement,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Add Achievement';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Achievement')
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
                Input::make('achievement.name')
                    ->title('Name')
                    ->required()
                    ->placeholder('achievement title')
                    ->help('Specify The achievement title.'),
                Quill::make('achievement.details')
                    ->title('details')
                    ->required()
                    ->placeholder('achievement details')
                    ->help('Specify The achievement details.'),
                Cropper::make('achievement.image')
                    ->targetId()
                    ->targetRelativeUrl()
                    ->height(400)
                    ->width(400)
                    ->title('Image')
                    ->horizontal()
                    ->help('Specify The Achievement Image.'),
            ]),

        ];
    }
    public function createOrUpdate(Achievement $achievement, Request $request)
    {
        $request->validate([
            'achievement.name' => 'required|string',
            'achievement.details' => 'required|string',
            'achievement.image' => 'nullable'
        ]);
        $achievement->fill($request->get('achievement'));
        // $achievement->saveImageAsWebp();
        $achievement->save();
        Alert::info('You have successfully updated a achievement.');

        return redirect()->route('platform.achievements.list');
    }
    public function remove(Achievement  $achievement)
    {
        $achievement->delete()
            ? Alert::info('You have successfully deleted the achieve$achievement.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.achievements.list');
    }
}
