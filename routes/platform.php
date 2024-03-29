<?php

declare(strict_types=1);

use App\Orchid\Screens\Achievement\AchievementEditScreen;
use App\Orchid\Screens\Achievement\AchievementListScreen;
use App\Orchid\Screens\Advertise\AdvertiseEditScreen;
use App\Orchid\Screens\Advertise\AdvertiseListScreen;
use App\Orchid\Screens\Article\ArticleEditScreen;
use App\Orchid\Screens\Article\ArticleListScreen;
use App\Orchid\Screens\Category\CategoryEditScreen;
use App\Orchid\Screens\Category\CategoryListScreen;
use App\Orchid\Screens\Comment\CommentEditScreen;
use App\Orchid\Screens\Comment\CommentListScreen;
use App\Orchid\Screens\Contact\ContactEditScreen;
use App\Orchid\Screens\Contact\ContactListScreen;
use App\Orchid\Screens\Examples\ExampleCardsScreen;
use App\Orchid\Screens\Examples\ExampleChartsScreen;
use App\Orchid\Screens\Examples\ExampleFieldsAdvancedScreen;
use App\Orchid\Screens\Examples\ExampleFieldsScreen;
use App\Orchid\Screens\Examples\ExampleLayoutsScreen;
use App\Orchid\Screens\Examples\ExampleScreen;
use App\Orchid\Screens\Examples\ExampleTextEditorsScreen;
use App\Orchid\Screens\PlatformScreen;
use App\Orchid\Screens\Role\RoleEditScreen;
use App\Orchid\Screens\Role\RoleListScreen;
use App\Orchid\Screens\Tag\TagEditScreen;
use App\Orchid\Screens\Tag\TagListScreen;
use App\Orchid\Screens\User\UserEditScreen;
use App\Orchid\Screens\User\UserListScreen;
use App\Orchid\Screens\User\UserProfileScreen;
use Illuminate\Support\Facades\Route;
use Tabuna\Breadcrumbs\Trail;

/*
|--------------------------------------------------------------------------
| Dashboard Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the need "dashboard" middleware group. Now create something great!
|
*/

// Main
Route::screen('/main', PlatformScreen::class)
    ->name('platform.main');

// Platform > Profile
Route::screen('profile', UserProfileScreen::class)
    ->name('platform.profile')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Profile'), route('platform.profile'));
    });

// Platform > System > Users
Route::screen('users/{user}/edit', UserEditScreen::class)
    ->name('platform.systems.users.edit')
    ->breadcrumbs(function (Trail $trail, $user) {
        return $trail
            ->parent('platform.systems.users')
            ->push(__('User'), route('platform.systems.users.edit', $user));
    });

// Platform > System > Users > Create
Route::screen('users/create', UserEditScreen::class)
    ->name('platform.systems.users.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.systems.users')
            ->push(__('Create'), route('platform.systems.users.create'));
    });

// Platform > System > Users > User
Route::screen('users', UserListScreen::class)
    ->name('platform.systems.users')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Users'), route('platform.systems.users'));
    });

// Platform > System > Roles > Role
Route::screen('roles/{role}/edit', RoleEditScreen::class)
    ->name('platform.systems.roles.edit')
    ->breadcrumbs(function (Trail $trail, $role) {
        return $trail
            ->parent('platform.systems.roles')
            ->push(__('Role'), route('platform.systems.roles.edit', $role));
    });

// Platform > System > Roles > Create
Route::screen('roles/create', RoleEditScreen::class)
    ->name('platform.systems.roles.create')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.systems.roles')
            ->push(__('Create'), route('platform.systems.roles.create'));
    });

// Platform > System > Roles
Route::screen('roles', RoleListScreen::class)
    ->name('platform.systems.roles')
    ->breadcrumbs(function (Trail $trail) {
        return $trail
            ->parent('platform.index')
            ->push(__('Roles'), route('platform.systems.roles'));
    });


// Platform > Article
Route::screen('articles', ArticleListScreen::class)
    ->name('platform.articles.list');
Route::screen('articles/edit/{Article?}', ArticleEditScreen::class)
    ->name('platform.articles.edit');

// Platform > Achievement
Route::screen('achievements', AchievementListScreen::class)
    ->name('platform.achievements.list');
Route::screen('achievements/edit/{Achievement?}', AchievementEditScreen::class)
    ->name('platform.achievements.edit');

// Platform > Advertise
Route::screen('advertises', AdvertiseListScreen::class)
    ->name('platform.advertises.list');
Route::screen('advertises/edit/{advertise?}', AdvertiseEditScreen::class)
    ->name('platform.advertises.edit');


// Platform > Comment
Route::screen('comments', CommentListScreen::class)
    ->name('platform.comments.list');
Route::screen('comments/edit/{comment?}', CommentEditScreen::class)
    ->name('platform.comments.edit');

// Platform > contact
Route::screen('contacts', ContactListScreen::class)
    ->name('platform.contacts.list');
Route::screen('contacts/edit/{contact?}', ContactEditScreen::class)
    ->name('platform.contacts.edit');

// Platform > category
Route::screen('categories', CategoryListScreen::class)
    ->name('platform.categories.list');
Route::screen('categories/edit/{Category?}', CategoryEditScreen::class)
    ->name('platform.categories.edit');

// Platform > Tag
Route::screen('tags', TagListScreen::class)
    ->name('platform.tags.list');
Route::screen('tags/edit/{Tag?}', TagEditScreen::class)
    ->name('platform.tags.edit');



// Example...
// Route::screen('example', ExampleScreen::class)
//     ->name('platform.example')
//     ->breadcrumbs(function (Trail $trail) {
//         return $trail
//             ->parent('platform.index')
//             ->push('Example screen');
//     });

// Route::screen('example-fields', ExampleFieldsScreen::class)->name('platform.example.fields');
// Route::screen('example-layouts', ExampleLayoutsScreen::class)->name('platform.example.layouts');
// Route::screen('example-charts', ExampleChartsScreen::class)->name('platform.example.charts');
// Route::screen('example-editors', ExampleTextEditorsScreen::class)->name('platform.example.editors');
// Route::screen('example-cards', ExampleCardsScreen::class)->name('platform.example.cards');
// Route::screen('example-advanced', ExampleFieldsAdvancedScreen::class)->name('platform.example.advanced');
