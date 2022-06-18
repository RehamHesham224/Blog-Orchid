@props([
    'popular_articles' => $popular_articles ?? [],
])

<div class="pageheader-content row">
    <div class="col-full">

        <div class="featured">

            <div class="featured__column featured__column--big">
                <div class="entry" style="background-image:url({{$popular_articles[0]->image}});">

                    <div class="entry__content">
                        @if($popular_articles[0]->categories)
                        @foreach($popular_articles[0]->categories as $category)
                        <span class="entry__category"><a >{{$popular_articles[0]->categories[0]['name']}}</a></span>

                        @endforeach
                        @else
                        @endif


                        <h1><a href="#0" title="">What Your Flower Preference Says About You and Your Personality.</a></h1>

                        <div class="entry__info">
                            <a href="#0" class="entry__profile-pic">
                                <img class="avatar" src="images/avatars/user-03.jpg" alt="">
                            </a>

                            <ul class="entry__meta">
                                <li><a href="#0">John Doe</a></li>
                                <li>{{$popular_articles[0]->created_at}}</li>
                            </ul>
                        </div>
                    </div> <!-- end entry__content -->

                </div> <!-- end entry -->
            </div> <!-- end featured__big -->

            <div class="featured__column featured__column--small">

                <div class="entry" style="background-image:url({{$popular_articles[1]->image}});">

                    <div class="entry__content">
                        @if($popular_articles[1]->categories)
                        @foreach($popular_articles[1]->categories as $category)
                        <span class="entry__category"><a >{{$popular_articles[1]->categories[0]['name']}}</a></span>

                        @endforeach
                        @else
                        @endif


                        <h1><a href="#0" title="">How to be a good Cooker</a></h1>

                        <div class="entry__info">

                            <ul class="entry__meta">
                                <li><a href="#0">John Doe</a></li>
                                <li>{{$popular_articles[1]->created_at}}</li>
                            </ul>
                        </div>
                    </div> <!-- end entry__content -->

                </div> <!-- end entry -->

                <div class="entry" style="background-image:url({{$popular_articles[2]->image}});">

                    <div class="entry__content">
                        @if($popular_articles[2]->categories)
                        @foreach($popular_articles[2]->categories as $category)
                        <span class="entry__category"><a >{{$popular_articles[2]->categories[0]['name']}}</a></span>

                        @endforeach
                        @else
                        @endif


                        <h1><a href="#0" title="">Throwback To The Good Old Days.</a></h1>

                        <div class="entry__info">
                            <a href="#0" class="entry__profile-pic">
                                <img class="avatar" src="images/avatars/user-03.jpg" alt="">
                            </a>

                            <ul class="entry__meta">
                                <li><a href="#0">John Doe</a></li>
                                <li>{{$popular_articles[2]->created_at}}</li>
                            </ul>
                        </div>
                    </div> <!-- end entry__content -->

                </div> <!-- end entry -->

            </div> <!-- end featured__small -->
        </div> <!-- end featured -->

    </div> <!-- end col-full -->
</div> <!-- end pageheader-content row -->
