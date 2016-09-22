<?php namespace App;

use Illuminate\Database\Eloquent\Model;
use App\ProjectImg;
class Project extends Model {

    //posts table in database
    protected $table = 'project';

    public static function getProject($id){
        $result = Project::where('design_id',$id)->paginate(5);
        $result->setPath('');
        return $result;
    }
    public static function getLastId(){
        $id = Project::select('id')->orderBy('id', 'desc')->first();
        return $id['id'];
    }

    public static function getProjectDetail($id){
        $result =  Project::where('id',$id)->first();
        return $result;        
    }

    public static function destroy($id){
        Project::where('id',$id)->delete();
        return false;
    }
}
