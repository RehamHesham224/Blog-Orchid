<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Advertise extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $advertises;
    public function __construct($advertises)
    {
        //
        $this->advertises = $advertises;
    }


    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.advertise');
    }
}
