<section class="s-content s-content--narrow s-content--no-padding-bottom">


    <article class="row format-standard">

        <div class="s-content__header col-full">
            <h1 class="s-content__header-title">
                {{$article->name}}
            </h1>
            <ul class="s-content__header-meta">
                <li class="date">December 16, 2017</li>
                <li class="cat">
                    In
                    @if($article->categories)
                    @foreach($article->categories as $category)
                    <a href="{{route('categories.show',[$article->categories[0]])}}">{{$article->categories[0]['name']}}</a>
                    @endforeach
                    @else
                    @endif

                </li>
            </ul>
        </div> <!-- end s-content__header -->
        <div class="s-content__media col-full">
            <div class="s-content__post-thumb text-center">
                <img src="{{$article->image}}" alt="">
            </div>
        </div> <!-- end s-content__media -->
        <div class="col-full s-content__main text-center">

            <p class="lead">{!! $article->body !!}</p>
        </div>





    </article> <!-- end article -->
   <!-- comments
        ================================================== -->
        <div class="comments-wrap">

            <div id="comments" class="row">
                <div class="col-full">
                    <h3 class="h2">{{count($comments)}}   @if(count($comments) < 1 || count($comments) == 1) Comment @else Comments @endif </h3>

                    <!-- commentlist -->
                    <ol class="commentlist">

                        @foreach($comments as $comment)
                        <li class="depth-1 comment">
                            <div class="comment__avatar">

                                {{-- <img width="50" height="50" class="avatar" src="images/avatars/user-02.jpg" alt=""> --}}
                                <h4 class="reply">{{$comment->user->name}}</h4>
                            </div>

                            <div class="comment__content">


                                <div class="comment__info">


                                <div class="comment__meta">
                                    <time class="comment-time">{{$comment->created_at}}</time>
                                </div>
                                </div>

                                <div class="comment__text">
                                    <cite > {{$comment->title}}</cite>
                                <p>{{$comment->body}}</p>
                                </div>

                            </div>

                        </li>  <!-- end comment level 1 -->
                        @endforeach
                    </ol> <!-- end commentlist -->
                    <!-- respond
                    ================================================== -->
                    <div class="respond">

                        <h3 class="h2">Add Comment</h3>

                        <form id="cForm" method="post" action="{{url('/comment')}}">
                            @csrf
                            <fieldset>
                                <input type="hidden" name="article_id" value="{{$article->id}}">
                                <input type="hidden" name="user_id" value="{{$article->user_id}}">
                                <x-form.input name="title" />
                                <x-form.textarea name="body" placeholder="message" />
                                <x-form.button>Submit</x-form.button>
                            </fieldset>
                        </form> <!-- end form -->
                        @if(session()->has('status'))
                        <div class="alert alert-success">
                            {{ session()->get('status') }}
                        </div>
                        @endif


                    </div> <!-- end respond -->

                </div> <!-- end col-full -->

            </div> <!-- end row comments -->
        </div> <!-- end comments-wrap -->
</section>
