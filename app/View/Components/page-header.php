<?php

namespace App\View\Components;

use Illuminate\View\Component;

class page-header extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $popular_articles;
    public function __construct($popular_articles)
    {
        //
        $this->popular_articles=$popular_articles;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.page-header');
    }
}
