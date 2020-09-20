<?php

namespace App\Helpers\Classes;



Class Recommendation
{
    private $city;
    private $current_weather;
    private $weather_condition;
    public $recommended_products = array();

    function __construct($city, $current_weather,$weather_condition, $recommended_products){
        $this->city = $city;
        $this->current_weather = $current_weather;
        $this->weather_condition = $weather_condition;
        $this->recommended_products = $recommended_products;      
    }

    function getCity(){
        return $this->city;
    }

    function setCity($city){
        $this->city = $city;
    }

    function getWeather(){
        return $this->current_weather;
    }

    function setWeather($city){
        $this->current_weather = $current_weather;
    }
}