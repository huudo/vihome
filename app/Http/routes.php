<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get("/",['uses' => 'HomeController@home']);

Route::auth();
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

Route::get('/home', 'HomeController@index');

Route::group(array('middleware'=>'auth','prefix'=>'admin'), function(){
    Route::get("/",['uses' => 'AdminController@index']);
    Route::get("/thietke/{id}",['uses' => 'AdminController@design']);

    Route::get("/thietke/createNew/{id}",['uses' => 'AdminController@designCreate']);    
    Route::post("/thietke/createNew/{id}",['uses' => 'AdminController@postCreate']);

    //Route to porject details
    Route::get("/thietke/createNew/{design}/{id}",['uses' => 'AdminController@project']);    
    Route::post("/thietke/createNew/{design}/{id}",['uses' => 'AdminController@postProject']);
});