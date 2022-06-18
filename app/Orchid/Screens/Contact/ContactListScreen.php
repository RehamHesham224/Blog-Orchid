<?php

namespace App\Orchid\Screens\Contact;

use App\Models\Contact;
use App\Orchid\Layouts\Contact\ContactListLayout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Screen;

class ContactListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'contacts' => Contact::filters()->defaultSort('created_at')->paginate(10)
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'All Contacts';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Add Contacts')
                ->icon('plus')
                ->method('addContact'),
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
            ContactListLayout::class
        ];
    }
    public function addContact()
    {
        return redirect()->route('platform.contacts.edit');
    }
}
