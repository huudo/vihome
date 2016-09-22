<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Suicide extends Model {

    //posts table in database
    protected $table = 'suicide';

    public static function getSuicide($id){
        $result = Suicide::where('type',$id)->paginate(5);
        return $result;
    }
    
    public static function destroy($id){
        $img = Suicide::select('img')->where('id',$id)->first();
        if($img['img'] != ""){
             unlink(public_path('images/uploads/suicide/'.$img['img']));
        }       
        Suicide::where('id',$id)->delete();
        return false;
    }
    public static function getRetailSuicide($id){
        $result = Suicide::where('id',$id)->first();
        return $result;
    }
}
