
    <header class="header">
        <div class="header__content row ">

            <div class="header__logo">
                <a class="logo" href="{{'home'}}">
                    <img src="{{ asset('images/logo.svg')}}" alt="Homepage">
                </a>
            </div> <!-- end header__logo -->

            <ul class="header__social">
                <li>
                    <a href="https:://google.com"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                </li>
                <li>
                    <a href="https:://google.com"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                </li>
                <li>
                    <a href="https:://google.com"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </li>
                <li>
                    <a href="https:://google.com"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                </li>
            </ul> <!-- end header__social -->

            <a class="header__search-trigger" href="#0"></a>

            <div class="header__search">

                <form role="search"  method="GET" class="header__search-form" action="{{url()->current()}}">
                    <label>
                        <span class="hide-content">Search for:</span>
                        <input type="search" class="search-field" value="{{request('search')}}" placeholder="Type Keywords" name="search" title="Search for:" autocomplete="off">
                    </label>
                    <input type="submit" class="search-submit" value="Search">
                </form>

                <a href="#0" title="Close Search" class="header__overlay-close">Close</a>

            </div>  <!-- end header__search -->


            <a class="header__toggle-menu" href="#0" title="Menu"><span>Menu</span></a>

            <nav class="header__nav-wrap">

                <h2 class="header__nav-heading h6">Site Navigation</h2>

                <ul class="header__nav">
                    <li class="{{ request()->is('home') ? 'current' : ''}}"><a href="{{route('home')}}" title="">Home</a></li>
                    <li class="{{ request()->is('categories') ? 'current' : ''}}"><a href="{{route('categories.index')}}" title="">Categories</a></li>
                    <li class="{{ request()->is('about') ? 'current' : ''}}"><a href="{{route('about')}}" title="">About</a></li>
                    <li class="{{ request()->is('contact-us') ? 'current' : ''}}"><a href="{{route('contact-us')}}" title="">Contact</a></li>
                </ul> <!-- end header__nav -->

                <a href="#0" title="Close Menu" class="header__overlay-close close-mobile-menu">Close</a>

            </nav> <!-- end header__nav-wrap -->

        </div> <!-- header-content -->
    </header> <!-- header -->


