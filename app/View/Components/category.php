<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Category extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $article;
    public function __construct($article)
    {
        $this->article = $article;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.category');
    }
}
