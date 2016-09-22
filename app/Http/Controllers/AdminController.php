<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

use App\Project;
use App\ProjectImg;
use App\News;
use App\Suicide;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.index');
    }

    public function design($id){
        $data['url'] = $id;
        $design_id = 0;
        switch ($id) {
            case 'office':
                $design_id = 1;
                $data['tittle'] = "Nội thất văn phòng";
                break;
            case 'living':
                $design_id = 2;
                $data['tittle'] = "Nội thất phòng khách";
                break;
            case 'bedroom':
                $design_id = 3;
                $data['tittle'] = "Nội thất phòng ngủ";
                break;
            case 'eating':
                $design_id = 4;
                $data['tittle'] = "Nội thất phòng ăn";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                $design_id = 0;
                break;
        }
        $data['projects'] = Project::getProject($design_id);
        return view('admin.design',$data);
    }

    public function designCreate($id){
        $data['url'] = $id;
        switch ($id) {
            case 'office':
                $data['tittle'] = "Nội thất văn phòng";
                break;
            case 'living':
                $data['tittle'] = "Nội thất phòng khách";
                break;
            case 'bedroom':
                $data['tittle'] = "Nội thất phòng ngủ";
                break;
            case 'eating':
                $data['tittle'] = "Nội thất phòng ăn";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                break;
        }
        return view('admin.designCreate',$data);
    }

    public function postCreate($id){
        $data['url'] = $id;
        $design_id = 0;
        switch ($id) {
            case 'office':
                $design_id = 1;
                $data['tittle'] = "Nội thất văn phòng";
                break;
            case 'living':
                $design_id = 2;
                $data['tittle'] = "Nội thất phòng khách";
                break;
            case 'bedroom':
                $design_id = 3;
                $data['tittle'] = "Nội thất phòng ngủ";
                break;
            case 'eating':
                $design_id = 4;
                $data['tittle'] = "Nội thất phòng ăn";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                $design_id = 0;
                break;
        }

        $files = Input::file('images');
        // Making counting of uploaded images
        $file_count = count($files);
        // start count how many uploaded
        $img_url = array();
        $uploadcount = 0;
        foreach($files as $file) {
          $rules = array('file' => 'required'); //'required|mimes:png,gif,jpeg,txt,pdf,doc'
          $validator = Validator::make(array('file'=> $file), $rules);
          if($validator->passes()){
            $destinationPath = public_path().'/images/uploads';
            $filename = $file->getClientOriginalName();
            array_push($img_url,  $filename);
            $upload_success = $file->move($destinationPath, $filename);
            $uploadcount ++;

          }

        } 
        if($uploadcount == $file_count){
            $input = Input::all();    
            $project = new Project;
            $project ->tittle = $input['tittle']; 
            $project ->content = $input['content']; 
            $project -> design_id = $design_id; 
            $project ->img = $img_url[0];
            $project ->save();
            $id_project = Project::getLastId();

            foreach ($img_url as $key => $path) {
               $img = new ProjectImg;
               $img->url = $path;
               $img->id_project  = $id_project;
               $img->save();
            }
            return Redirect::to('admin/thiet-ke/'.$id);
        } 
        else{
            Session::flash('error', "Upload không thành công! Kiểm tra lại");   
            return Redirect::to('admin/thiet-ke/createNew/'.$id);
        }       
        
    }

    public function project($design,$id){
        $design_id = 0;
        switch ($design) {
            case 'office':
                $design_id = 1;
                $data['tittle'] = "Nội thất văn phòng";
                break;
            case 'living':
                $design_id = 2;
                $data['tittle'] = "Nội thất phòng khách";
                break;
            case 'bedroom':
                $design_id = 3;
                $data['tittle'] = "Nội thất phòng ngủ";
                break;
            case 'eating':
                $design_id = 4;
                $data['tittle'] = "Nội thất phòng ăn";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                $design_id = 0;
                break;
        }
        $data['project'] = Project::getProjectDetail($id);
        $data['img'] = ProjectImg::getFirstImg($id);
        $data['countImg'] = sizeof($data['img']);   
        return view('admin.detailProject',$data);
    }

    public function delete(){
        $id = $_POST['service'];        
        Project::destroy($id);
        ProjectImg::destroy($id);
        return false;
    }
    // Suicide Controller
    public function suicide($id){
        switch ($id) {
            case 'noi-that':
                $data['tittle'] = "Tư vấn nội thất";
                break;
            case 'kien-truc':
                $data['tittle'] = "Tư vấn kiến trúc";
                break;
            case 'xay-dung':
                $data['tittle'] = "Tư vấn xây dựng";
                break;
            case 'phong-thuy':
                $data['tittle'] = "Tư vấn phong thủy";
                break;    
            default:
                break;
        }
        $data['url'] = $id;
        $data['suicides'] = Suicide::getSuicide($id);
        return view('admin.suicide',$data); 
    }
    public function suicideCreate($id){
        switch ($id) {
            case 'noi-that':
                $data['tittle'] = "Tư vấn nội thất";
                break;
            case 'kien-truc':
                $data['tittle'] = "Tư vấn kiến trúc";
                break;
            case 'xay-dung':
                $data['tittle'] = "Tư vấn xây dựng";
                break;
            case 'phong-thuy':
                $data['tittle'] = "Tư vấn phong thủy";
                break;    
            default:
                break;
        }
        $data['url'] = $id;
        return view('admin.suicideCreate',$data);
    }
    public function post_suicideCreate($id){
        $file = Input::file('images');
        $input = Input::all();
        $img_url = '';
        $rules = array('file' => 'required'); //'required|mimes:png,gif,jpeg,txt,pdf,doc'
        $validator = Validator::make(array('file'=> $file), $rules);
        if($validator->passes()){
            $destinationPath = public_path().'/images/uploads/suicide';
            $filename = $file->getClientOriginalName();
            $img_url = $filename;
            $upload_success = $file->move($destinationPath, $filename);
            $suicide = new Suicide;
            $suicide->tittle = $input['tittle'];
            $suicide->content = $input['content'];
            $suicide->img = $img_url;
            $suicide->type = $id;
            $suicide->save();
            return Redirect::to('admin/tu-van/'.$id);
        }else{
            Session::flash('error', "Upload không thành công! Kiểm tra lại");   
            return Redirect::to('admin/tu-van/tao-moi/'.$id);
        }      
    }

    public function deleteSuicide(){
        $id = $_POST['service'];        
        Suicide::destroy($id);
        return false;
    }
    //News controller
    public function news(){
        $data['news'] = News::getNews();
        return view('admin.news',$data);
    }

    public function createNews(){
        return view('admin.createNews');
    }
    public function post_createNews(){
        $file = Input::file('images');
        $input = Input::all();
        $img_url = '';
        $rules = array('file' => 'required'); //'required|mimes:png,gif,jpeg,txt,pdf,doc'
        $validator = Validator::make(array('file'=> $file), $rules);
        if($validator->passes()){
            $destinationPath = public_path().'/images/uploads/news';
            $filename = $file->getClientOriginalName();
            $img_url = $filename;
            $upload_success = $file->move($destinationPath, $filename);
            $new = new News;
            $new->tittle = $input['tittle'];
            $new->content = $input['content'];
            $new->img = $img_url;
            $new->save();
            return Redirect::to('admin/tin-tuc');
        }else{
            Session::flash('error', "Upload không thành công! Kiểm tra lại");   
            return Redirect::to('admin/tin-tuc/tao-moi');
        }      
    }    

    public function delNews(){
        $id = $_POST['service'];        
        News::destroy($id);
        return false;
    }

}
