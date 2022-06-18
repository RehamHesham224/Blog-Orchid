<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Achievement extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $achievements;
    public function __construct($achievements)
    {
        //
        $this->achievements = $achievements;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.achievement');
    }
}
