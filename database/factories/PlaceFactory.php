<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Place>
 */
class PlaceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title'=> fake()-> city(),
            'price_from'=> fake()-> numberBetween($min = 100, $max = 500), 
            'price_to'=> fake()-> numberBetween($min = 1000, $max = 3000), 
            'description'=> fake()-> text($maxNbChars = 100),
            'image'=> fake()-> randomElement(['1702142510.jpg', '1702142648.jpg', '1702142756.jpg', '1702143200.jpg', '1702415226.jpg', '1702415256.jpg']),
            'published'=> fake()-> boolean(),
            'created_at'=> fake()-> dateTimeBetween($startDate = '-1 year', $endDate = 'now'),
        ];
    }
}
