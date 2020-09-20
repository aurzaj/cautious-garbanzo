<?php

use Illuminate\Database\Seeder;
use Illuminate\app\Helpers\FakerCustom;
use Faker\Factory as Faker;

class AccessoriesTableSeeder extends Seeder
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
        $faker->addProvider(new App\Helpers\FakerCustom($faker));
        

        //populating data
        for($i=0; $i<10; $i++)
        {
        DB::table('accessories')->insert([
            'brand' => $faker->brands() . PHP_EOL,
            'type' => $faker->accessories(),
            'color' => $faker->clothingColor() . PHP_EOL,
            'price' => $faker->price(15, 200, true, true),
            ]);
        }
    }
}
