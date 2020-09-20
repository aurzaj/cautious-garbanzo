<?php

//Creating custom Faker class

namespace App\Helpers;

use Faker\Provider\Base;

class FakerCustomFemale extends Base
{
    public static $clothingColors = [
        'blue', 'green', 'orange', 'red', 'purple', 'white', 'black', 'gray', 'brown', 'pink', 'yellow'
    ];

    protected static $warmTopClothes = [
        'Wool Coat', 'Polished Blazer', 'Sweater', 
    ];

    protected static $warmMidClothes = [
        'pants', 'Leggings', 'jeans', 'skirt & stockings'
    ];

    protected static $warmBotShoes= [
        'Ankle Boots', 'Calf Boots', 'Military Boots', 'Chelsea Boots'
    ];


    public static $normalTopClothes = [
        'Tunic Top', 'Longline Top', 'Wrap Top', 'High Low Top'
    ];

    protected static $normalMidClothes = [
        'pants', 'trousers', 'jeans', 'Leggings'
    ];

    protected static $normalBotShoes= [
        'Brogues', 'Heels', 'Trainers', 'Lace Ups', 'Canvas Shoes', 'Loafers'
    ];


    public static $coldTopClothes = [
        'Blouse', 'Crop Top', 'Tank Top', 'Cami Top', 'Tube Top', 
    ];

    protected static $coldMidClothes = [
        'jeans shorts', 'skirt', 'shorts'
    ];

    protected static $coldBotShoes= [
        'Wedges', 'Ballerinas', 'Flip Flops', 'Mules'
    ];

    public static $clothingBrands = [
        'Fendi', 'Versace', 'Armani', 'H&M', 'Zara', 'Burberry', 'Hermes', 'Gucci', 'Prada', 'Chanel'
    ];

    public function warmTopClothingType()
    {
        return static::randomElement(static::$warmTopClothes);
    }

    public function warmMidClothingType()
    {
        return static::randomElement(static::$warmMidClothes);
    }

    public function clothingColor()
    {
        return static::randomElement(static::$clothingColors);
    }

    public function warmBotClothingType()
    {
        return static::randomElement(static::$warmBotShoes);
    }

    public function normalTopClothingType()
    {
        return static::randomElement(static::$normalTopClothes);
    }

    public function normalMidClothingType()
    {
        return static::randomElement(static::$normalMidClothes);
    }

    public function normalBotClothingType()
    {
        return static::randomElement(static::$normalBotShoes);
    }

    public function coldTopClothingType()
    {
        return static::randomElement(static::$coldTopClothes);
    }

    public function coldMidClothingType()
    {
        return static::randomElement(static::$coldMidClothes);
    }

    public function coldBotClothingType()
    {
        return static::randomElement(static::$coldBotShoes);
    }

    public function brands()
    {
        return static::randomElement(static::$clothingBrands);
    }

}