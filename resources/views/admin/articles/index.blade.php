@extends('../layouts.admin_layout')

@section('title', 'Articles')

@section('content')

<!-- Success Message --> 
@if (session('success'))
    <div id="success" class="alert alert-success" style="z-index: 2000;">
        {{ session('success') }}
    </div>
@endif

<div class="page-header">
    <h3 class="fw-bold mb-3">Articles</h3>
    <ul class="breadcrumbs mb-3">
        <li class="nav-home">
            <a href="#">
                <i class="icon-home"></i>
            </a>
        </li>
        <li class="separator">
            <i class="icon-arrow-right"></i>
        </li>
        <li class="nav-item">
            <a href="#">Tables</a>
        </li>
        <li class="separator">
            <i class="icon-arrow-right"></i>
        </li>
        <li class="nav-item">
            <a href="#">Datatables</a>
        </li>
    </ul>
</div>

<div class="row">

    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="d-flex align-items-center">
                    <h4 class="card-title">All Aricles</h4>
                    <a class="btn btn-primary btn-round ms-auto" href="{{route('admin.articles.create')}}">
                        <i class="fa fa-plus"></i>
                        Add
                    </a>
                </div>
            </div>

            <div class="card-body">
              

                <div class="table-responsive">
                    <div id="add-row_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                        
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="add-row" class="display table table-striped table-hover dataTable"
                                    role="grid" aria-describedby="add-row_info">
                                    <thead>
                                        <tr role="row">
                                            
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Name: activate to sort column ascending"
                                                style="width: 363.612px;">Title</th>
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Category</th>
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Image</th>
                                                <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Author</th>
                                                <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Status</th>
                                            <th style="width: 120.7px;" class="sorting" tabindex="0"
                                                aria-controls="add-row" rowspan="1" colspan="1"
                                                aria-label="Action: activate to sort column ascending">Action
                                            </th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            
                                            <th rowspan="1" colspan="1">Title</th>
                                            <th rowspan="1" colspan="1">Category</th>
                                            <th rowspan="1" colspan="1">Image</th>
                                            <th rowspan="1" colspan="1">Author</th>
                                            <th rowspan="1" colspan="1">Status</th>
                                            <th rowspan="1" colspan="1">Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>


                                    @foreach ($articles as $article)
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">{{ $article->title }}</td>
                                            <td>  {{ $article->category->name }} </td>
                                            <td><img src="{{ asset('storage/' . $article->image) }}" alt="" width="100"></td>
                                            <td>{{ $article->user->name }}</td>
                                            <td>
                                                 @if($article->status == 'published')
                                                    <span class="badge bg-success">Published</span>
                                                @else
                                                    <span class="badge bg-secondary">Draft</span>
                                                @endif
                                            </td>
                                            <td>
                                                
                                            <div class="form-button-action">

                                                <a data-bs-toggle="tooltip" title=""
                                                    class="btn btn-link btn-primary btn-lg"
                                                    data-original-title="Edit Task" 
                                                    href="{{ route('admin.articles.edit', $article) }}">
                                                    <i class="fa fa-edit"></i>
                                                </a>
                                                

                                                
                                                <form action="{{ route('admin.articles.destroy', $article) }}" method="POST" style="display:inline;">
                                                    @csrf
                                                    @method('DELETE')
                                                    
                                                    <button type="submit" data-bs-toggle="tooltip" title=""
                                                        class="btn btn-link btn-danger"
                                                        data-original-title="Remove">
                                                        <i class="fa fa-times"></i>
                                                    </button>
                                                </form>
                                            </div>

                                               

                                                
                                            </td>
                                        </tr>
                                       
                                    @endforeach

                                      
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
// Wait for the DOM to load
document.addEventListener('DOMContentLoaded', function () {
    // Target the div by its ID
    const myDiv = document.getElementById('success');
    // Set a timeout to hide the div after 3 seconds
    setTimeout(() => {
        myDiv.style.display = 'none'; // Hides the div
    }, 3000); // 3000 milliseconds = 3 seconds
});
</script>

@endsection
