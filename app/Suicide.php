<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Suicide extends Model {

    //posts table in database
    protected $table = 'suicide';

    public static function getSuicide($id){
        $result = Suicide::where('type',$id)->get();
        return $result;
    }
   
}
