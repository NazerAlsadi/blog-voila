@extends('../layouts.admin_layout')

@section('title', 'Edit Article')

@section('content')

<form action="{{ route('admin.articles.update', $article) }}" 
      method="POST"
      enctype="multipart/form-data"
      class="bg-white p-4 shadow-sm border rounded">

    @csrf
    @method('PUT')
 
    <div class="mb-3">
        <label class="form-label">Title</label>
        <input type="text"
               name="title"
               class="form-control"
               value="{{ old('title', $article->title) }}"
               required>
    </div>

    <div class="mb-3">
        <label class="form-label">Category</label>
        <select name="category_id" class="form-control" required>
            @foreach($categories as $c)
                <option value="{{ $c->id }}"
                    {{ $c->id == $article->category_id ? 'selected' : '' }}>
                    {{ $c->name }}
                </option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">Current Image</label><br>
        @if($article->image)
            <img src="{{ asset('storage/' . $article->image) }}" 
                 width="150" class="rounded mb-2">
        @else
            <p>No image</p>
        @endif

        <input type="file" name="image" class="form-control mt-2">
    </div>

    <div class="mb-3">
        <label class="form-label">Content</label>
        <textarea name="content" id="editor" class="form-control" rows="6">{{ old('content', $article->content) }}</textarea>
    </div>

    <div class="mb-3">
        <label class="form-label">Status</label>
        <select name="status" class="form-control">
            <option value="draft" {{ $article->status == 'draft' ? 'selected' : '' }}>Draft</option>
            <option value="published" {{ $article->status == 'published' ? 'selected' : '' }}>Published</option>
        </select>
    </div>

    <div class="mb-3">
        <label class="form-label">User</label>
        <select name="user_id" class="form-control" required>
            @foreach($users as $user)
                <option value="{{ $user->id }}" {{ $user->id == old('user_id', $article->user_id) ? 'selected' : '' }}>
                    {{ $user->name }}
                </option>
            @endforeach
        </select>
    </div>
    <button class="btn btn-primary" >Update Article</button>

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


