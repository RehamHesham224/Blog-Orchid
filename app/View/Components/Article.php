<?php

namespace App\View\Components;

use Illuminate\View\Component;

class Article extends Component
{
    public $article;
    public $comments;
    public function __construct($article, $comments)
    {
        //
        $this->article = $article;
        $this->comments = $comments;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.article');
    }
}
