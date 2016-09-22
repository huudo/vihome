<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProjectImg extends Model {

    //posts table in database
    protected $table = 'project_img';

    public static function getFirstImg($id){
        $result = ProjectImg::select('url')->where('id_project',$id)->get();
        return $result;
    }
    public static function destroy($id_project){
        $imgs = ProjectImg::select('url')->where('id_project',$id_project)->get();
        foreach ($imgs as $key => $img) {
           unlink(public_path('images/uploads/'.$img['url']));
        }
        ProjectImg::where('id_project',$id_project)->delete();
        return false;
        
    }

}
