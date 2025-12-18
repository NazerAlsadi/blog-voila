@extends('../layouts.admin_layout')

@section('title', 'Add Category')

@section('content')

<form action="{{ route('admin.categories.store') }}" 
      method="POST"
      class="bg-white p-4 shadow-sm border rounded">

    @csrf

    <div class="mb-3">
        <label class="form-label">Category Name</label>
        <input type="text" name="name" class="form-control" required
               value="{{ old('name') }}">
    </div>

    <button class="btn btn-success">Save Category</button>

</form>

@endsection
