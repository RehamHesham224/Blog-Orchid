
<x-app>
    <x-slot name="title">
        Home
    </x-slot>
    <!-- pageheader
    ================================================== -->
    <section class="s-pageheader s-pageheader--home">

        <x-header />
        <x-page-header :popular_articles=$popular_articles/>

    </section> <!-- end s-pageheader -->
    <!-- s-content
    ================================================== -->
        <x-articles :articles=$articles />
        <x-advertise :advertises=$advertises />
        {{-- {{$advertises}} --}}


    <!-- s-extra
    ================================================== -->
    <section class="s-extra">
        <div class="row top">
            <x-popular-articles :popular_articles=$popular_articles />
            <x-small-about />
        </div> <!-- end row -->
        <x-tags :tags=$tags />
    </section> <!-- end s-extra -->

    <x-footer />
    {{-- <x-preloader/> --}}
</x-app>

