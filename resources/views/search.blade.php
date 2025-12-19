@extends('layouts.website_layout')

@section('content')

<section class="search-results section">
    <div class="container" data-aos="fade-up">

        <div class="row mb-4">
            <div class="col-md-8">
                <h3>
                    Search results for:
                    <strong>"{{ $search }}"</strong>
                </h3>
            </div>

            <div class="col-md-4">
                <form method="GET" action="{{ route('search') }}">
                    <input type="text"
                           name="search"
                           class="form-control"
                           placeholder="Search articles..."
                           value="{{ $search }}">
                </form>
            </div>
        </div>

        <div class="row g-5">

            <div class="col-lg-8">

                @if($articles->count())
                    @foreach($articles as $article)
                        <div class="post-entry mb-4">

                            @if($article->image)
                                <a href="{{ route('website.articles.show', $article->slug) }}">
                                    <img src="{{ asset($article->image) }}"
                                         class="img-fluid mb-3">
                                </a>
                            @endif

                            <div class="post-meta">
                                <span class="date">{{ $article->category->name }}</span>
                                <span class="mx-1">•</span>
                                <span>{{ $article->created_at->format('M d, Y') }}</span>
                            </div>

                            <h2>
                                <a href="{{ route('website.articles.show', $article->slug) }}">
                                    {{ $article->title }}
                                </a>
                            </h2>

                            <p>
                                {{ Str::limit(strip_tags($article->content), 200) }}
                            </p>

                            <div class="d-flex align-items-center author">
                                <div class="photo">
                                    <img src="{{ asset('website/assets/img/person-1.jpg') }}"
                                         class="img-fluid">
                                </div>
                                <div class="name ms-3">
                                    <h3 class="m-0 p-0">{{ $article->user->name }}</h3>
                                </div>
                            </div>

                        </div>
                    @endforeach

                    {{ $articles->links() }}
                @else
                    <div class="alert alert-warning">
                        No results found.
                    </div>
                @endif

            </div>

            <!-- Sidebar -->
            <div class="col-lg-4">
                <div class="trending">
                    <h3>Categories</h3>
                    <ul class="trending-post">
                        @foreach($categories as $category)
                            <li>
                                <a href="{{ route('website.categories.show', $category->slug) }}">
                                    <h3>
                                        {{ $category->name }}
                                        <span class="author">
                                            ({{ $category->articles()->published()->count() }})
                                        </span>
                                    </h3>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>

        </div>

    </div>
</section>

@endsection
