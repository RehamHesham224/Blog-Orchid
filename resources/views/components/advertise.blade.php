
    <section class="s-content">
        @if(!empty($advertises) && $advertises->count())
        <div class="row masonry-wrap">
            <div class="masonry">
                <div class="grid-sizer"></div>
                @foreach($advertises as $advertise)
                    <div class="masonry__brick entry format-standard" data-aos="fade-up">

                        <div class="entry__thumb">
                            <img src="{{$advertise->image}}" alt="">
                        </div>

                    </div> <!-- end advertise -->

                @endforeach

            </div> <!-- end masonry -->
        </div> <!-- end masonry-wrap -->
    @endif

    </section> <!-- s-content -->
