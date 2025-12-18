@extends('../layouts.admin_layout')

@section('title', 'Add Article')

@section('content')

<form action="{{ route('admin.articles.store') }}" 
      method="POST" 
      enctype="multipart/form-data" 
      class="bg-white p-4 shadow-sm border rounded">

    @csrf

    <div class="mb-3">
        <label class="form-label">Title</label>
        <input type="text" 
               name="title" 
               class="form-control" 
               value="{{ old('title') }}" 
               required>
    </div>

    <div class="mb-3">
        <label class="form-label">Category</label>
        <select name="category_id" class="form-control" required>
            <option value="">Choose...</option>
            @foreach($categories as $c)
                <option value="{{ $c->id }}">{{ $c->name }}</option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">Author</label>
        <select name="user_id" class="form-control" required>
            @foreach($users as $u)
                <option value="{{ $u->id }}">{{ $u->name }}</option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">Image</label>
        <input type="file" name="image" class="form-control">
    </div>

    <div class="mb-3">
        <label class="form-label">Content</label>
        <textarea name="content" id="editor" class="form-control" rows="6" required></textarea>
    </div>

    <div class="mb-3">
        <label class="form-label">Status</label>
        <select name="status" class="form-control">
            <option value="draft">Draft</option>
            <option value="published">Published</option>
        </select>
    </div>

    <button class="btn btn-success">Save Article</button>

</form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $('#editor').summernote({
            height: 250
        });
    });
</script>
@endsection


