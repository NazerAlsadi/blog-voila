@extends('layouts.website_layout')

@section('title', $article->title)

@section('content')

<!-- Page Title -->
    <div class="page-title">
      <div class="container d-lg-flex justify-content-between align-items-center">
        <h1 class="mb-2 mb-lg-0">Single Post</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.html">Home</a></li>
            <li class="current">Single Post</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <div class="container">
      <div class="row">

        <div class="col-lg-8">

          <!-- Blog Details Section -->
          <section id="blog-details" class="blog-details section">
            <div class="container">

              <article class="article">

                <div class="post-img">
                   <img src="{{ asset('storage/' . $article->image) }}" alt="{{ $article->title }}" class="img-fluid">
                </div>

                <h2 class="title">{{ $article->title }}</h2>

                <div class="meta-top">
                  <ul>
                    <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-details.html">{{ $article->user->name }}</a></li>
                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="{{ $article->created_at->format('Y-m-d') }}">{{ $article->created_at->format('M d, Y') }}</time></a></li>
                    <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-details.html">{{ $article->comments->count() }} Comments</a></li>
                  </ul>
                </div><!-- End meta top -->

                <div class="content">
                  <p>
                        {!! $article->content !!}
                  </p>
                </div><!-- End post content -->


                <div class="meta-bottom">
                  <i class="bi bi-folder"></i>
                  <ul class="cats">
                    <li><a href="#">Business</a></li>
                  </ul>

                  <i class="bi bi-tags"></i>
                  <ul class="tags">
                    <li><a href="#">Creative</a></li>
                    <li><a href="#">Tips</a></li>
                    <li><a href="#">Marketing</a></li>
                  </ul>
                </div><!-- End meta bottom -->

              </article>

            </div>
          </section><!-- /Blog Details Section -->

          <!-- Blog Comments Section -->
          <section id="blog-comments" class="blog-comments section">

            <div class="container">

              <h4 class="comments-count">{{ $article->comments->count() }} Comments</h4>

              @foreach($article->comments as $comment)
              <div id="comment-1" class="comment">
                <div class="d-flex">
                  <div class="comment-img"><img src="{{url('/')}}/website/assets/img/blog/comments-1.jpg" alt=""></div>
                  <div>
                    <h5><a href="">{{ $comment->user_name ?? 'Anonymous' }}</a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                    <time datetime="{{ $comment->created_at->format('Y-m-d') }}">{{ $comment->created_at->format('d M, Y') }}</time>
                    <p>
                      {{ $comment->content }}
                    </p>
                  </div>
                </div>
              </div><!-- End comment #1 -->
              @endforeach
              

            </div>

          </section><!-- /Blog Comments Section -->

          <!-- Comment Form Section -->
          <section id="comment-form" class="comment-form section">
            <div class="container">

              <form action="{{ route('website.comments.store') }}" method="POST">
                @csrf
                <input type="hidden" name="article_id" value="{{ $article->id }}">
                
                <h4>Post Comment</h4>
                <p>Your email address will not be published. Required fields are marked * </p>
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input name="name" type="text" class="form-control" placeholder="Your Name*" required>
                  </div>
                  <div class="col-md-6 form-group">
                    <input name="email" type="text" class="form-control" placeholder="Your Email*" required>
                  </div>
                </div>
                <!-- <div class="row">
                  <div class="col form-group">
                    <input name="website" type="text" class="form-control" placeholder="Your Website">
                  </div>
                </div> -->
                <div class="row">
                  <div class="col form-group">
                    <textarea name="content" class="form-control" placeholder="Your Comment*"></textarea>
                  </div>
                </div>

                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Post Comment</button>
                </div>

              </form>

            </div>
          </section><!-- /Comment Form Section -->

        </div>

        <div class="col-lg-4 sidebar">

          <div class="widgets-container">

            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <!-- Search Widget -->
            <div class="search-widget widget-item">

              <h3 class="widget-title">Search</h3>
              <form action="">
                <input type="text">
                <button type="submit" title="Search"><i class="bi bi-search"></i></button>
              </form>

            </div><!--/Search Widget -->

            <!-- Recent Posts Widget -->
            <div class="recent-posts-widget widget-item">

              <h3 class="widget-title">Related Posts</h3>

              @foreach($related as $rel)
              <div class="post-item">
                <img src="{{ asset('storage/' . $rel->image) }}" alt="" class="flex-shrink-0">
                <div>
                  <h4><a href="{{ route('website.articles.show', $rel->slug) }}">{{ $rel->title }}</a></h4>
                  <time datetime="{{ $rel->created_at->format('Y-m-d') }}"> {{ $rel->created_at->format('M d, Y') }}</time>
                </div>
              </div><!-- End recent post item-->
              @endforeach
            </div><!--/Recent Posts Widget -->

            <!-- Tags Widget -->
            <div class="tags-widget widget-item">

            
              <h3 class="widget-title">Categoties</h3>
              <ul>
                 @foreach($categories as $category)
                    <li>
                        <a href="{{ route('website.categories.show', $category->slug) }}">
                            <h6> 
                                {{ $category->name }} 
                                <span class="author">({{ $category->articles()->published()->count() }})</span>
                            </h6>
                        </a>
                    </li>
                @endforeach
                
              </ul>

            </div><!--/Tags Widget -->

          </div>

        </div>

      </div>
    </div>

@endsection
