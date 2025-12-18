@extends('../layouts.admin_layout')

@section('title', 'Edit Category')

@section('content')

<form action="{{ route('admin.categories.update', $category) }}" 
      method="POST"
      class="bg-white p-4 shadow-sm border rounded">

    @csrf
    @method('PUT')

    <div class="mb-3">
        <label class="form-label">Category Name</label>
        <input type="text" 
               name="name" 
               class="form-control" 
               value="{{ old('name', $category->name) }}"
               required>
    </div>

    <button class="btn btn-primary">Update Category</button>

</form>

@endsection
