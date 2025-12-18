@extends('layouts.website_layout')
@section('content')

 <!-- Page Title -->
    <div class="page-title position-relative">
      <div class="container d-lg-flex justify-content-between align-items-center">
        <h1 class="mb-2 mb-lg-0">{{ $category->name }}</h1>
        <nav class="breadcrumbs"> 
          <ol>
            <li><a href="index.html">Home</a></li>
            <li class="current">{{ $category->name }}</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <div class="container">
      <div class="row">

        <div class="col-lg-8">

          <!-- Blog Posts Section -->
          <section id="blog-posts" class="blog-posts section">

            <div class="container">
              <div class="row gy-4">
                @foreach($articles as $article)
                  <div class="col-lg-6">
                    <article class="position-relative h-100">

                      <div class="post-img position-relative overflow-hidden">
                        <img src="{{ asset('storage/' . $article->image) }}" class="img-fluid" alt="{{ $article->title }}">
                        <span class="post-date"> {{ $article->created_at->format('F d') }}</span>
                      </div>

                      <div class="post-content d-flex flex-column">

                        <h3 class="post-title">{{ $article->title }}</h3>

                        <div class="meta d-flex align-items-center">
                          <div class="d-flex align-items-center">
                            <i class="bi bi-person"></i> <span class="ps-2">{{ $article->user->name }}</span>
                          </div>
                          <span class="px-3 text-black-50">/</span>
                          <div class="d-flex align-items-center">
                            <i class="bi bi-folder2"></i> <span class="ps-2">{{ $category->name }}</span>
                          </div>
                        </div>

                        <p>
                          {{ Str::limit(strip_tags($article->content), 120) }}
                        </p>

                        <hr>

                        <a href="{{ route('website.articles.show', $article->slug) }}" class="readmore stretched-link">
                          <span>Read More</span>
                          <i class="bi bi-arrow-right"></i>
                        </a>

                      </div>

                    </article>
                  </div><!-- End post list item -->
                @endforeach
              </div>
            </div>

          </section><!-- /Blog Posts Section -->

          @if($totalPages > 1)
          <!-- Blog Pagination Section -->
          <section id="blog-pagination" class="blog-pagination section">

            <div class="container">
              <div class="d-flex justify-content-center">
                <ul>
                  
                   <!-- Previous -->
                  <li>
                      @if($page > 1)
                          <a href="?page={{ $page - 1 }}">
                              <i class="bi bi-chevron-left"></i>
                          </a>
                      @else
                          <span><i class="bi bi-chevron-left"></i></span>
                      @endif
                  </li>
                   <!-- Pages -->
                  @for($i = 1; $i <= $totalPages; $i++)
                      <li>
                          <a href="?page={{ $i }}"
                            class="{{ $i == $page ? 'active' : '' }}">
                              {{ $i }}
                          </a>
                      </li>
                  @endfor

                  <!-- Next -->
                  <li>
                      @if($page < $totalPages)
                          <a href="?page={{ $page + 1 }}">
                              <i class="bi bi-chevron-right"></i>
                          </a>
                      @else
                          <span><i class="bi bi-chevron-right"></i></span>
                      @endif
                  </li>

                </ul>
              </div>
            </div>

          </section>
          <!-- /Blog Pagination Section -->
          @endif

        </div>

        <div class="col-lg-4 sidebar">

          <div class="widgets-container">

            

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

              <h3 class="widget-title">Recent Posts</h3>
              @foreach($recentPosts as $recent)
              <div class="post-item">
                <img src="{{ asset('storage/' . $recent->image) }}" alt="{{ $recent->title }}" class="flex-shrink-0">
                <div>
                  <h4><a href="{{ route('website.articles.show', $recent->slug) }}">{{ $recent->title }}</a></h4>
                  <time datetime="{{ $recent->created_at }}">{{ $recent->created_at->format('M d, Y') }}</time>
                </div>
                 
              </div><!-- End recent post item-->
              @endforeach
             

            </div><!--/Recent Posts Widget -->

           

          </div>

        </div>

      </div>
    </div>
@endsection