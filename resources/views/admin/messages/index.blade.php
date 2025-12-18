@extends('../layouts.admin_layout')

@section('content')

<!-- Success Message --> 
@if (session('success'))
    <div id="success" class="alert alert-success" style="z-index: 2000;">
        {{ session('success') }}
    </div>
@endif


<div class="page-header">
    <h3 class="fw-bold mb-3">Messages</h3>
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
                    <h4 class="card-title">All Messages</h4>
                    
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
                                                style="width: 363.612px;">Name</th>
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Email</th>
                                            <th class="sorting" tabindex="0" aria-controls="add-row" rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 204.275px;">Message</th>
                                                
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
                                            
                                            <th rowspan="1" colspan="1">Name</th>
                                            <th rowspan="1" colspan="1">Email</th>
                                            <th rowspan="1" colspan="1">Message</th>
                                            <th rowspan="1" colspan="1">Status</th>
                                            <th rowspan="1" colspan="1">Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>


                                    @foreach($messages as $message)
                                        <tr role="row" class="odd">
                                            <td class="sorting_1">{{ $message->name }}</td>
                                            <td>  {{ $message->email }} </td>
                                            <td>{{ $message->message }}</td>
                                            <td>
                                                 {{ $message->status }}
                                            </td>
                                            <td>
                                                
                                            <div class="form-button-action">

                                               @if($message->status !== 'reviewed')
                                                <form action="{{ route('admin.messages.review', $message->id) }}" method="POST" style="display:inline-block;">
                                                    @csrf
                                                    <button type="submit" class="btn btn-sm btn-primary">Mark as Reviewed</button>
                                                </form>
                                                @endif

                                                <form action="{{ route('admin.messages.destroy', $message->id) }}" method="POST" style="display:inline-block;">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('هل أنت متأكد من حذف الرسالة؟')">حذف</button>
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
