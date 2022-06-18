
<x-app>
    <x-slot name="title">
        Contact Us
    </x-slot>
    <!-- pageheader
    ================================================== -->
    <section class="s-pageheader">

        <x-header />
    </section> <!-- end s-pageheader -->
    <!-- s-content
    ================================================== -->
        <x-contact />

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
