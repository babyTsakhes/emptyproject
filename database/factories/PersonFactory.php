<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Person>
 */
class PersonFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name'=>fake('ru_RU')->name(),
            'surname'=>fake('ru_RU')->lastName(),
            'gender'=>fake('ru_RU')->boolean(),
            'passport'=>fake('ru_RU')->numberBetween(4567898989,9999999999)
        ];
    }
}
