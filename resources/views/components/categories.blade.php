    <!-- s-content
    ================================================== -->
    <section class="s-content">
        @if(!empty($categories) && $categories->count())
        <div class="row narrow">
            <div class="col-full s-content__header" data-aos="fade-up">
                <h1>Category: Lifestyle</h1>

                <p class="lead">Dolor similique vitae. Exercitationem quidem occaecati iusto. Id non vitae enim quas error dolor maiores ut. Exercitationem earum ut repudiandae optio veritatis animi nulla qui dolores.</p>
            </div>
        </div>

        <div class="row masonry-wrap">
            <div class="masonry">

                <div class="grid-sizer"></div>
            @foreach($categories as $category)
                <article class="masonry__brick entry format-standard" data-aos="fade-up">

                    <div class="entry__thumb">
                        <a href={{route('categories.show',[$category])}} class="entry__thumb-link">
                            <img src="{{$category->image}}"
                                alt="">
                        </a>
                    </div>

                    <div class="entry__text">
                        <div class="entry__header">

                            <div class="entry__date">
                                <a href={{route('categories.show',[$category])}}>{{$category->created_at}}</a>
                            </div>
                            <h1 class="entry__title"><a href={{route('categories.show',[$category])}}>{{$category->name}}</a></h1>

                        </div>
                        <div class="entry__excerpt">
                            <p>
                                {!! $category->description !!}
                            </p>
                        </div>
                    </div>

                </article> <!-- end article -->
            @endforeach

            </div> <!-- end masonry -->
        </div> <!-- end masonry-wrap -->
        {{$categories->links('partials.paginate')}}
        @else
        <div class="row">
        <div class="alert alert-warning " >
            There is No categories , that match This name .
        </div>
        </div>
    @endif

    </section> <!-- s-content -->
