

<x-app>
    <x-slot name="title">
        Categories
    </x-slot>
    <!-- pageheader
    ================================================== -->
    <section class="s-pageheader">

        <x-header />
    </section> <!-- end s-pageheader -->
    <!-- s-content
    ================================================== -->
        <x-categories :categories=$categories />

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


