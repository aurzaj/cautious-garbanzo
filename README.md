<p align="center"><img src="https://res.cloudinary.com/dtfbvvkyp/image/upload/v1566331377/laravel-logolockup-cmyk-red.svg" width="400"></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License"></a>
</p>

## Technologies used

Laravel, phpMyAdmin

## How to use

Local server environment will be needed to achieve data from the database. SQL test data file is in weatherDress/test_data.sql.

To achieve clothing recommendation depending on current weather data: 

"localhost_adress/api/products/recommended/:{city}" - command is used. Instead {city} Lithuanian city name should be used.

To achieve accessories recommendation depending on current weather data: 

"localhost_adress/api/products/recommended/:{city}/accessories" - command is used. Instead {city} Lithuanian city name should be used.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

Air condition data is achieved from LHMT ( https://api.meteo.lt/ )
