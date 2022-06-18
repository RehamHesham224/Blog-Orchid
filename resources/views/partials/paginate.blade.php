
@if ($paginator->hasPages())
<div class="row">
    <div class="col-full">
        <nav class="pgn">
            <ul>
            {{-- Previous Page Link --}}
            @if ($paginator->onFirstPage())
                <li class="inactive pgn__prev" aria-disabled="true">
                    <span aria-hidden="true">Prev</span>
                </li>
            @else
                <li>
                    <a class="pgn__prev" href="{{ $paginator->previousPageUrl() }}" ></a>
                </li>
            @endif

            {{-- Pagination Elements --}}
            @foreach ($elements as $element)
                {{-- "Three Dots" Separator --}}
                @if (is_string($element))
                    <li class="disabled" aria-disabled="true"><span>{{ $element }}</span></li>
                @endif

                {{-- Array Of Links --}}
                @if (is_array($element))
                    @foreach ($element as $page => $url)
                        @if ($page == $paginator->currentPage())
                            <li class="active" aria-current="page"><span class=" pgn__num current">{{ $page }}</span></li>
                        @else
                            <li ><a href="{{ $url }}" class=" pgn__num">{{ $page }}</a></li>
                        @endif
                    @endforeach
                @endif
            @endforeach

            {{-- Next Page Link --}}
            @if ($paginator->hasMorePages())
                <li class="pgn__next">
                    <a href="{{ $paginator->nextPageUrl() }}" ></a>
                </li>
            @else
                <li class="pgn__next inactive"aria-disabled="true" >
                    <span aria-hidden="true">Next</span>
                </li>
            @endif
        </ul>
    </nav>
</div>
</div>
@endif
