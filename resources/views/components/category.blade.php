
    <article class="masonry__brick entry format-standard" >

        <div class="entry__thumb">
            <a href={{route('articles.show',[$article])}} class="entry__thumb-link">
                <img src="{{$article->image}}" alt="">
            </a>
        </div>

        <div class="entry__text">
            <div class="entry__header">

                <div class="entry__date">
                    <a href={{route('articles.show',[$article])}}>{{$article->created_at}}</a>
                </div>
                <h1 class="entry__title"><a href={{route('articles.show',[$article])}}> {{$article->name}}</a></h1>
            </div>
            <div class="entry__excerpt">
                <p>
                    {!! Str::limit($article->body, $limit = 50, $end = '...') !!}
                </p>
            </div>

        </div>

    </article> <!-- end article -->


