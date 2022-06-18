

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
    <section class="s-content">
        <!-- s-content
    ================================================== -->
    <div class="row narrow">
        <div class="col-full s-content__header" >
            <h1>Category: {{$category->name}}</h1>

            <p class="lead">{!! $category->description !!}</p>
        </div>
    </div>

    <div class="row masonry-wrap">
        <div class="masonry">

            <div class="grid-sizer"></div>
        @foreach($articles as $article)

            <x-category :article=$article />

        @endforeach
    </div> <!-- end masonry -->
</div> <!-- end masonry-wrap -->
{{$articles->links('partials.paginate')}}

<!-- s-content -->
</section>

    <!-- s-extra
    ================================================== -->
    <section class="s-extra">
        <div class="row top">
            <x-popular-articles :popular_articles=$popular_articles />
            <x-small-about />
        </div> <!-- end row -->
        <x-tags :tags=$tags />
    </section> <!-- end s-extra -->

    {{-- Footer --}}
    <x-footer />
    {{-- <x-preloader/> --}}
</x-app>


