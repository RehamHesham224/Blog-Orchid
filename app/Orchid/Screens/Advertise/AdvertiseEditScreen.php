<?php

namespace App\Orchid\Screens\Advertise;


use App\Models\Advertise;
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
use Orchid\Screen\Fields\Select;

class AdvertiseEditScreen extends Screen
{
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

    public function query(Advertise $advertise): iterable
    {
        $this->exists = $advertise->exists;
        if ($this->exists) {
            $this->name = 'Edit Advertise';
            $this->author = $advertise->users->name ?? "Reham";
        }

        return [
            'advertise' => $advertise,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Add Advertise';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Advertise')
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

                Cropper::make('advertise.image')
                    ->targetId()
                    ->targetRelativeUrl()
                    ->height(400)
                    ->width(400)
                    ->title('Image')
                    ->horizontal()
                    ->help('Specify The Advertise avatar.'),
            ])
        ];
    }
    public function createOrUpdate(Advertise $advertise, Request $request)
    {
        $request->validate([
            'advertise.image' => 'required',
        ]);
        $advertise->fill($request->get('advertise'));
        $advertise->save();
        Alert::info('You have successfully updated a advertise.');

        return redirect()->route('platform.advertises.list');
    }
    public function remove(Advertise $advertise)
    {
        $advertise->delete()
            ? Alert::info('You have successfully deleted the advertise.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.advertises.list');
    }
}
