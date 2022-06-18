@props([
    'popular_articles' => $popular_articles ?? [],
])

<div class="col-eight md-six tab-full popular">
    <h3>Popular Posts</h3>

    <div class="block-1-2 block-m-full popular__posts">
        @foreach($popular_articles as $article)
        <article class="col-block popular__post">
            <a href="#0" class="popular__thumb">
                <img src="{{$article->image}}" alt="">
            </a>
            <h5><a href="#0">{{$article->title}}</a></h5>
            <section class="popular__meta">
                    <span class="popular__author"><span>By</span> <a href="#0"> {{$article->users->name ?? "Reham" }}</a></span>
                <span class="popular__date"><span>on</span> <time datetime="2017-12-19">{{$article->created_at}}</time></span>
            </section>
        </article>
        @endforeach

    </div> <!-- end popular_posts -->
</div> <!-- end popular -->
