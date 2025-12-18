@extends('../layouts.admin_layout')

@section('title', 'Comments')

@section('content')
<!-- Success Message --> 
@if (session('success'))
    <div id="success" class="alert alert-success" style="z-index: 2000;">
        {{ session('success') }}
    </div>
@endif


<div class="page-header">
    <h3 class="fw-bold mb-3">Comments</h3>
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
                    <h4 class="card-title">All Comments</h4>
                    <a class="btn btn-primary btn-round ms-auto" href="#">
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
                                                style="width: 363.612px;">Author</th>
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Comment</th>
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Article</th>
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
                                            
                                            <th rowspan="1" colspan="1">Author</th>
                                            <th rowspan="1" colspan="1">Comment</th>
                                            <th rowspan="1" colspan="1">Article</th>
                                            <th rowspan="1" colspan="1">Status</th>
                                            <th rowspan="1" colspan="1">Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>


                                    @foreach ($comments as $comment)
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">
                                                <strong>{{ $comment->name }}</strong><br>
                                                <small>{{ $comment->email }}</small>
                                            </td>
                                            <td>  {{ $comment->content }}</td>
                                            <td>
                                                <a href="{{ route('admin.articles.show', $comment->article->slug) }}" 
                                                    target="_blank">
                                                        {{ $comment->article->title }}
                                            </td>
                                            <td>
                                                @if($comment->is_approved)
                                                    <span class="badge bg-success">Approved</span>
                                                @else
                                                    <span class="badge bg-warning text-dark">Pending</span>
                                                @endif
                                            </td>
                                            <td>
                                                <div class="form-button-action">
                                                    @if($comment->is_approved)
                                                    <form action="{{ route('admin.comments.toggle', $comment) }}"
                                                        method="POST"
                                                        class="d-inline">
                                                        @csrf
                                                        @method('PATCH')

                                                        <button class="btn btn-sm {{ $comment->is_approved ? 'btn-warning' : 'btn-success' }}">
                                                            {{ $comment->is_approved ? 'Disable' : 'Approve' }}
                                                        </button>
                                                    </form>
                                                    @endif
                                                    @if(!$comment->is_approved)
                                                        <form action="{{ route('admin.comments.approve', $comment) }}"
                                                            method="POST"
                                                            class="d-inline">
                                                            @csrf
                                                            <button class="btn btn-sm btn-success">
                                                                Approve
                                                            </button>
                                                        </form>
                                                    @endif

                                                    <form action="{{ route('admin.comments.destroy', $comment) }}"
                                                        method="POST"
                                                        class="d-inline">
                                                        @csrf
                                                        @method('DELETE')

                                                        <button class="btn btn-sm btn-danger"
                                                                onclick="return confirm('Delete this comment?')">
                                                            Delete
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
