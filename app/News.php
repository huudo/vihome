<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model {

    //posts table in database
    protected $table = 'news';

    public static function getNews(){
        $result = News::all();
        return $result;
    }
   
}
