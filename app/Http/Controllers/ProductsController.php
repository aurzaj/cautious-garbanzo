<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;
use App\Helpers\Classes\Recommendation;
use App\Helpers\Classes\RecommendedProduct;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{
    public function getRecomendation($city) {

        //if user enters city name with uppercase api request wont work, so city name converted to lowercase letters
        strtolower($city);

        //Helper arrays to make correct collection of clothes
        $clothingCollection = [
            'top_clothing', 'legs_clothing', 'shoes'
        ];

        $seasons = array(
            ['summer', 19], ['fall/spring', 9]
        );

        $gender = array('male', 'female');

        //Connecting to meteo api with helper function which is written in App\Helpers\HelperFunctions.php
            $api_data = ConnectApi($city);

            try {
                $airTemperature = json_decode($api_data)->forecastTimestamps[0];
        
        //Setting air temperature from api to a variable



        //calling a custom helper function @whichSeason which depending on air temperature sets current clothing season to a variable
        $currentSeason = whichSeason($seasons, $airTemperature->airTemperature);

        //creating a custom class object where final results will be stored
        $finalRecommendation = new Recommendation(ucfirst($city), $airTemperature->airTemperature,$airTemperature->conditionCode, []);

        //creating a clothing collection for male and female
        for($i = 0; $i < count($gender); $i++){
            for($j = 0; $j < count($clothingCollection); $j++){
                $finalRecommendation->recommended_products[$gender[$i]][$j] = DB::table('products')->where('season', $currentSeason)->
                where('gender',$gender[$i])->where('type', $clothingCollection[$j])->inRandomOrder()->first();
            }
        }
        //result is displayed in json format
        echo json_encode($finalRecommendation);
    } catch (\Throwable $th) {
        echo "Wrong city format!" . PHP_EOL;
        echo "Correct format should be: /api/products/recommended/:LithuanianCity";
    }
    }

    public function getAccessoriesRecomendation($city){

        $weatherConditions = [[ 'glasses', 'clear'], 

        [ 'nothing', 'isolated-clouds', 'scattered-clouds', 'overcast'],

        ['umbrella', 'light-rain', 'moderate-rain', 'heavy-rain'],

        ['hat', 'sleet', 'light-snow', 'moderate-snow', 'heavy-snow'],

        ['unknown', 'fog', 'na']];
        
        //if user enters city name with uppercase api request wont work, so city name converted to lowercase letters
        strtolower($city);

        $recommendationType = "";

        //Connecting to meteo api with helper function which is written in App\Helpers\HelperFunctions.php
        $api_data = ConnectApi($city);
        try{
        //Setting air temperature from api to a variable
        $airTemperature = json_decode($api_data)->forecastTimestamps[0];

        $finalRecommendation = new Recommendation(ucfirst($city), $airTemperature->airTemperature,$airTemperature->conditionCode, []);


        for($i = 0; $i < count($weatherConditions); $i++){
            for($j = 1; $j < count($weatherConditions[$i]); $j++){
                if($airTemperature->conditionCode == $weatherConditions[$i][$j]){
                    $finalRecommendation->recommended_products = DB::table('accessories')->
                    where('type', $weatherConditions[$i][0])->inRandomOrder()->first();
                }
            }
        }
        echo json_encode($finalRecommendation);

    } catch (\Throwable $th) {
        echo "Wrong city format!" . PHP_EOL;
        echo "Correct format should be: /api/products/recommended/:LithuanianCity/accessories";
    }
    }
}
