<?php

use Illuminate\Database\Seeder;
use Illuminate\app\Helpers\FakerCustom;
use Faker\Factory as Faker;


class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Setting Faker and providers
        $faker = Faker::create('App\Models\Products');
        $faker->addProvider(new Liior\Faker\Prices($faker));
        $faker->addProvider(new App\Helpers\FakerCustomFemale($faker));
        
        $season = "fall/spring";
        $gender = "female";
        $clothingType = "shoes";
        //populating data
        for($i=0; $i<10; $i++)
        {
        DB::table('products')->insert([
            'season' => $season,
            'gender' => $gender,
            'type' => $clothingType,
            'brand' => $faker->brands() . PHP_EOL,
            'clothing' => $faker->normalBotClothingType() . PHP_EOL,
            'color' => $faker->clothingColor() . PHP_EOL,
            'price' => $faker->price(15, 200, true, true),
            ]);
        }
    }
}
