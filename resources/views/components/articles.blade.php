@props([
    'articles' => $articles ?? [],

])

    <section class="s-content">
        @if(!empty($articles) && $articles->count())
        {{-- {{dd($articles)}} --}}
        <div class="row masonry-wrap">
            <div class="masonry">

                <div class="grid-sizer"></div>
                {{-- {{dd($articles)}} --}}

                @foreach($articles as $article)
                    <article class="masonry__brick entry format-standard" data-aos="fade-up">

                        <div class="entry__thumb">
                            <a  href={{route('articles.show',[$article])}} class="entry__thumb-link">
                                <img src="{{$article->image}}" alt="">
                            </a>
                        </div>

                        <div class="entry__text">
                            <div class="entry__header">

                                <div class="entry__date">
                                    <a  href={{route('articles.show',[$article])}}>{{$article->created_at}}</a>
                                </div>
                                <h1 class="entry__title"><a  href={{route('articles.show',[$article])}}>{{$article->name}}</a></h1>

                            </div>
                            <div class="entry__excerpt">
                                <p>
                                    {!! Str::limit($article->body, $limit = 50, $end = '...') !!}
                                </p>
                            </div>
                            <div class="entry__meta">
                                <span class="entry__meta-links">
                                    @if($article->categories)
                                    @foreach($article->categories as $category)
                                    <a href="{{route('categories.show',[$article->categories[0]])}}">{{$article->categories[0]['name']}}</a>
                                    @endforeach
                                    @else
                                    @endif
                                </span>
                            </div>
                        </div>

                    </article> <!-- end article -->

                @endforeach




            </div> <!-- end masonry -->
        </div> <!-- end masonry-wrap -->
        {{$articles->links('partials.paginate')}}
        @else
            <div class="row">
            <div class="alert alert-warning " >
                There is No articles , that match This name .
            </div>
            </div>
    @endif

    </section> <!-- s-content -->
