<?php

namespace App\Orchid\Screens\Contact;

use App\Models\Contact;
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

class ContactEditScreen extends Screen
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
    public function query(Contact $contact): iterable
    {
        $this->exists = $contact->exists;
        if ($this->exists) {
            $this->name = 'Edit contact';
        }

        return [
            'contact' => $contact,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Edit Contact';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Create Contact')
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
                Input::make('contact.name')
                    ->title('Name')
                    ->required()
                    ->placeholder('contact title')
                    ->help('Specify The contact title.'),
                Input::make('contact.subject')
                    ->title('Subject')
                    ->required()
                    ->placeholder('contact subject')
                    ->help('Specify The contact subject.'),
                Input::make('contact.email')
                    ->title('email')
                    ->required()
                    ->placeholder('Contact Email')
                    ->help('Specify The contact email.'),
                Quill::make('contact.body')
                    ->title('body')
                    ->required()
                    ->placeholder('contact body')
                    ->help('Specify The contact body.'),

            ]),
        ];
    }
    public function createOrUpdate(Contact $contact, Request $request)
    {
        $request->validate([
            'contact.name' => 'required|string',
            'contact.body' => 'required|string',
            'contact.subject' => 'required|string',
            'contact.email' => 'required|string',
        ]);
        $contact->fill($request->get('contact'));
        // $contact->saveImageAsWebp();
        $contact->save();
        Alert::info('You have successfully updated a contact.');

        return redirect()->route('platform.contacts.list');
    }
    public function remove(Contact $contact)
    {
        $contact->delete()
            ? Alert::info('You have successfully deleted the contact.')
            : Alert::warning('An error has occurred');

        return redirect()->route('platform.contacts.list');
    }
}
