<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Car>
 */
class CarFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'cartitle' => fake()->company(),
            'price' => fake()->numberBetween($min = 6000, $max = 12000),
            'description' => fake()->text(),
            'image' => fake()->imageUrl(800,600),
            'published' => 1,
        ];
    }
}
