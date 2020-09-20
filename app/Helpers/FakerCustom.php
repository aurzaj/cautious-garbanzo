<?php

//Creating custom Faker class

namespace App\Helpers;

use Faker\Provider\Base;

class FakerCustom extends Base
{

    protected static $warmTopClothes = [
        'coat', 'jacket'
    ];

    protected static $warmMidClothes = [
        'pants', 'trousers', 'jeans',
    ];

    protected static $warmBotShoes= [
        'Leather Boots', 'military Shoes'
    ];

    public static $normalTopClothes = [
        'sweater',  'jumper', 'hoodie', 'shirt'
    ];

    protected static $normalMidClothes = [
        'pants', 'trousers', 'jeans',
    ];

    protected static $normalBotShoes= [
        'sneakers', 'rubber boots'
    ];


    public static $coldTopClothes = [
        't-shirt', 'polo'
    ];

    protected static $coldMidClothes = [
        'shorts', 'bathing shorts'
    ];

    protected static $coldBotShoes= [
        'sandals', 'slippers', 'flip Flops'
    ];

    public static $clothingColors = [
        'blue', 'green', 'orange', 'red', 'purple', 'white', 'black', 'gray', 'brown', 'pink', 'yellow'
    ];

    public static $accessories = [
        'umbrella', 'hat', 'glasses'
    ];

    public static $clothingBrands = [
        'Nike', 'Tommy Hilfiger', 'Ralph Lauren', 'Calvin Klein', 'Adidas', 'Supreme', 'Levi', 'Tom Tailor'
    ];

    public function clothingColor()
    {
        return static::randomElement(static::$clothingColors);
    }

    public function warmTopClothingType()
    {
        return static::randomElement(static::$warmTopClothes);
    }

    public function warmMidClothingType()
    {
        return static::randomElement(static::$warmMidClothes);
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

    public function accessories()
    {
        return static::randomElement(static::$accessories);
    }

    public function brands()
    {
        return static::randomElement(static::$clothingBrands);
    }

}