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

Route::get('/du-an/',['uses' => 'HomeController@project']);
Route::get('/du-an/{id}',['uses' => 'HomeController@project_retail']);

Route::get('/thiet-ke/{name}',['uses' => 'HomeController@design']);
Route::get('/thiet-ke/{name}/{id}',['uses' => 'HomeController@design_retail']);

Route::get('/tu-van/{name}',['uses' => 'HomeController@suicide']);
Route::get('/tu-van/{name}/{id}',['uses' => 'HomeController@suicideDetail']);

Route::get('/tin-tuc', 'HomeController@news');

Route::get('/tin-tuc/{id}', 'HomeController@newsRetail');

//Route Admin
Route::group(array('middleware'=>'auth','prefix'=>'admin'), function(){
    Route::get("/",['uses' => 'AdminController@index']);
    Route::get("/thiet-ke/{id}",['uses' => 'AdminController@design']);

    Route::get("/thiet-ke/createNew/{id}",['uses' => 'AdminController@designCreate']);    
    Route::post("/thiet-ke/createNew/{id}",['uses' => 'AdminController@postCreate']);

    //Route to porject details
    Route::get("/thiet-ke/createNew/{design}/{id}",['uses' => 'AdminController@project']);    
    Route::post("/thiet-ke/createNew/{design}/{id}",['uses' => 'AdminController@postProject']);

    Route::post("thiet-ke/delete",['uses' => 'AdminController@delete']);
    //Route to Suicide (Tư vấn)
    Route::get("/tu-van/{id}",['uses' => 'AdminController@suicide']);    
    Route::get("/tu-van/tao-moi/{id}",['uses' => 'AdminController@suicideCreate']);    
    Route::post("/tu-van/tao-moi/{id}",['uses' => 'AdminController@post_suicideCreate']);  
    Route::post("tu-van/delete",['uses' => 'AdminController@deleteSuicide']);  

    //Route to News
    Route::get("/tin-tuc",['uses' => 'AdminController@news']); 
    Route::get("/tin-tuc/tao-moi",['uses' => 'AdminController@createNews']); 
    Route::post("/tin-tuc/tao-moi",['uses' => 'AdminController@post_createNews']);  
    Route::post("/deleteNews",['uses' => 'AdminController@delNews']);     
});