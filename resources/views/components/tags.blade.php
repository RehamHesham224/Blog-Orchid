@props([
    'tags' => $tags ?? [],
])

<div class="row bottom tags-wrap">
    <div class="col-full tags">
        <h3>Tags</h3>

        <div class="tagcloud">
            @foreach($tags as $tag)
            {{-- {{$tag}} --}}
            <a href="#0">{{$tag->title}}</a>
            @endforeach
        </div> <!-- end tagcloud -->
    </div> <!-- end tags -->
</div> <!-- end tags-wrap -->
