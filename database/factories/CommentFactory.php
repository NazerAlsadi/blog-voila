<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Article;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Comment>
 */
class CommentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'article_id' => Article::inRandomOrder()->first()->id ?? Article::factory(),
            'name' => fake()->name(),
            'email' => fake()->safeEmail(),
            'content' => fake()->sentence(12),
            'is_approved' => fake()->boolean(),
        ];
    }
}
