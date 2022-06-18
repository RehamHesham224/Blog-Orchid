<?php

namespace App\Orchid\Layouts\Contact;

use Orchid\Screen\Actions\Link;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class ContactListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'contacts';
    //'name', 'subject', 'email', 'body'

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
            TD::make('id', 'ID')
                ->width('100px')
                ->render(function ($contact) {
                    return Link::make($contact->id)
                        ->route('platform.contacts.edit', [$contact->id]);
                }),
            TD::make('name', 'Name')
                ->width('100px')
                ->sort()
                ->filter(TD::FILTER_TEXT)
                ->render(function ($contact) {
                    return Link::make($contact->name)
                        ->route('platform.contacts.edit', [$contact->id]);
                }),
            TD::make('body', 'Body')
                ->sort()
                ->render(function ($contact) {
                    return Link::make(\Str::limit($contact->body, 30))
                        ->route('platform.contacts.edit', [$contact->id]);
                })
                ->width('100px'),
            TD::make('subject', 'subject')
                ->width('100px')
                ->render(function ($contact) {
                    return Link::make($contact->subject)
                        ->route('platform.contacts.edit', [$contact->id]);
                }),
            TD::make('email', 'email')
                ->width('100px')
                ->render(function ($contact) {
                    return Link::make($contact->email)
                        ->route('platform.contacts.edit', [$contact->id]);
                }),
        ];
    }
}
