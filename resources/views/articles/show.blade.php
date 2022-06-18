

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
        <x-article :article=$article :comments=$comments  />


    <x-footer />
    {{-- <x-preloader/> --}}
</x-app>


