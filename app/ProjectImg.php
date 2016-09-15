<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProjectImg extends Model {

    //posts table in database
    protected $table = 'project_img';

    public static function getFirstImg($id){
        $result = ProjectImg::select('url')->where('id_project',$id)->get();
        return $result;
    }

}
