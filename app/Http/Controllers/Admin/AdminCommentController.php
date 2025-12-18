<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Comment;

class AdminCommentController extends Controller
{
    public function index()
    {
        return view('admin.comments.index', [
            'comments' => Comment::latest()->paginate(20)
        ]);
    }

    public function approve(Comment $comment)
    {
        $comment->update(['is_approved' => true]);

        return back()->with('success', 'Comment approved');
    }

    public function destroy(Comment $comment)
    {
        $comment->delete();

        return back()->with('success', 'Deleted');
    }

    public function toggle(Comment $comment)
    {
        $comment->update([
            'is_approved' => ! $comment->is_approved
        ]);

        return back()->with(
            'success',
            $comment->is_approved
                ? 'Comment approved'
                : 'Comment disabled'
        );
    }
}
