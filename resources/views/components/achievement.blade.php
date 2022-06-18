<section class="s-content">
    <div class="s-content__header col-full">
        <h1 class="s-content__header-title">
            Achievements
        </h1>
    </div> <!-- end s-content__header -->
        @if(!empty($achievements) && $achievements->count())
        <div class="row masonry-wrap">
            <div class="masonry">

                <div class="grid-sizer"></div>

                @foreach($achievements as $achievement)
                    <div class="masonry__brick entry format-standard" data-aos="fade-up">

                        <div class="entry__thumb">
                                <img src="{{$achievement->image}}" alt="">
                        </div>

                        <div class="entry__text">
                            <div class="entry__header">
                                <div class="entry__date">
                                    {{$achievement->created_at}}
                                </div>
                                <h1 class="entry__title">{{$achievement->name}}</h1>
                            </div>
                            <div class="entry__excerpt">
                                <p>
                                    {!! $achievement->details !!}
                                </p>
                            </div>
                        </div>

                    </div> <!-- end achievement -->

                @endforeach




            </div> <!-- end masonry -->
        </div> <!-- end masonry-wrap -->
        {{$achievements->links('partials.paginate')}}
        @else
            <div class="row">
            <div class="alert alert-warning " >
                There is No achievements , that match This name .
            </div>
            </div>
    @endif

    </section> <!-- s-content -->
