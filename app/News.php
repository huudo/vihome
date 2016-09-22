<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model {

    //posts table in database
    protected $table = 'news';

    public static function getNews(){
        $result = News::paginate(5);
        return $result;
    }
    
    public static function getRetailNews($id){
        $result = News::where('id',$id)->first();
        return $result;
    }
    public static function destroy($id){
        $img = News::select('img')->where('id',$id)->first();
        if($img['img'] != ""){
             unlink(public_path('images/uploads/news/'.$img['img']));
        }
       
        News::where('id',$id)->delete();
        return false;
    }

}
