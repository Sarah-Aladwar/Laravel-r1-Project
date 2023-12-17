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
            'image' => fake()->randomElement(['1701827314.png', '1701878376.jpg', '1701878277.png', '1702130377.png', '1702136138.jpg']),
            'published' => 1,
            'category_id' => fake()->numberBetween($min = 1, $max = 5)
        ];
    }
}
 