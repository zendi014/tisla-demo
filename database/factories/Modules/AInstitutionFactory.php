<?php

namespace Database\Factories\Modules;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Modules\AInstitution;
use App\Helpers\Helper;

class AInstitutionFactory extends Factory
{

    protected $model = AInstitution::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $company =  $this->faker->company;
        return [
            'institution_code' => Helper::GenerateInstitutionCode($company),
            'institution_name' => $company,
            'institution_location' => $this->faker->state . " | ".$this->faker->city,
            'institution_domain' => $this->faker->unique()->safeEmail,
            'institution_level' => 1,
            'institution_category' => 1,
            'institution_image' => "/assets/images/insitutions.png",
        ];
    }
}