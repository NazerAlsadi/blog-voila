<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Builder;

use App\Models\Category;
use App\Models\User;
use App\Models\Comment;

class Article extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'image',
        'content',
        'user_id',
        'category_id',
        'status',
    ];

    // الكاتب
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    // التصنيف
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    // التعليقات
    public function comments(): HasMany
    {
        return $this->hasMany(Comment::class);
    }

    // Scope للمقالات المنشورة
    public function scopePublished(Builder $query): Builder
    {
        return $query->where('status', 'published');
    }

    // Scope للبحث بالعنوان أو المحتوى
    public function scopeSearch(Builder $query, ?string $term): Builder
    {
        if (!$term) {
            return $query;
        }

        $term = "%{$term}%";
        return $query->where(function (Builder $q) use ($term) {
            $q->where('title', 'like', $term)
              ->orWhere('content', 'like', $term);
        });
    }
}
