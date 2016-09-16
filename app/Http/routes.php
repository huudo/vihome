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
    Route::get("/thiet-ke/{id}",['uses' => 'AdminController@design']);

    Route::get("/thiet-ke/createNew/{id}",['uses' => 'AdminController@designCreate']);    
    Route::post("/thiet-ke/createNew/{id}",['uses' => 'AdminController@postCreate']);

    //Route to porject details
    Route::get("/thiet-ke/createNew/{design}/{id}",['uses' => 'AdminController@project']);    
    Route::post("/thiet-ke/createNew/{design}/{id}",['uses' => 'AdminController@postProject']);
    //Route to Suicide (Tư vấn)
    Route::get("/tu-van/{id}",['uses' => 'AdminController@suicide']);    

    //Route to News
    Route::get("/tin-tuc/{id}",['uses' => 'AdminController@suicide']);    
});