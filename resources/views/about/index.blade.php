
<x-app>
    <x-slot name="title">
        About
    </x-slot>
    <!-- pageheader
    ================================================== -->
    <section class="s-pageheader">
        <x-header />
        <x-page-header :popular_articles=$popular_articles />

    </section> <!-- end s-pageheader -->
    <!-- s-content
    ================================================== -->
        <x-about />
        <x-achievement :achievements=$achievements />
    <!-- s-extra
    ================================================== -->
    <section class="s-extra">
        <div class="row top">
            <x-popular-articles :popular_articles=$popular_articles />
            <x-small-about />
        </div> <!-- end row -->
        <x-tags :tags=$tags  />
    </section> <!-- end s-extra -->

    <x-footer />
    {{-- <x-preloader/> --}}
</x-app>
