<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

use App\Project;
use App\ProjectImg;
use App\News;
use App\Suicide;

class HomeController extends Controller
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
        return view('home');
    }
    public function home(){
        return view('index');
    }
    public function project(){
        $id = 0;
        $data['tittle'] = "Dự án thi công";
        $data['project'] = Project::getProject($id);
        $data['icon'] = "noithat.png";
        return view('page.project',$data);
    }
    public function project_retail($id){
        $data['tittle'] = "Dự án thi công";
        $data['project'] = Project::getProjectDetail($id);
        $data['images'] = ProjectImg::getFirstImg($id);       
        $data['icon'] = "noithat.png";
        return view('page.design_retail',$data);
    }
    public function design($name){
         switch ($name) {
            case 'van-phong':
                $design_id = 1;
                $data['tittle'] = "Nội thất văn phòng";
                $data['icon'] = "office.png";
                break;
            case 'phong-khach':
                $design_id = 2;
                $data['tittle'] = "Nội thất phòng khách";
                $data['icon'] = "living.png";
                break;
            case 'phong-an':
                $design_id = 3;
                $data['tittle'] = "Nội thất phòng ăn";
                $data['icon'] = "eating.png";
                break;
            case 'phong-ngu':
                $design_id = 4;
                $data['tittle'] = "Nội thất phòng ngủ";
                $data['icon'] = "bedroom.png";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                $design_id = 0;
                $data['icon'] = "noithat.png";
                break;
        }
        $data['name'] = $name;
        $data['project'] = Project::getProject($design_id);

        return view('page.design',$data);
    }

    public function design_retail($name,$id){
         switch ($name) {
            case 'van-phong':
                
                $data['tittle'] = "Nội thất văn phòng";
                break;
            case 'phong-khach':
               
                $data['tittle'] = "Nội thất phòng khách";
                break;
            case 'phong-an':
                
                $data['tittle'] = "Nội thất phòng ngủ";
                break;
            case 'phong-ngu':
                
                $data['tittle'] = "Nội thất phòng ăn";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                break;
        }
        $data['project'] = Project::getProjectDetail($id);
        $data['images'] = ProjectImg::getFirstImg($id);       
        $data['icon'] = "noithat.png";
        return view('page.design_retail',$data);
    }

    public function suicide($name){
        switch ($name) {
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
                # code...
                $data['tittle'] = "Tư vấn";
                break;
        }
        $data['url'] = $name;
        $data['suicides'] = Suicide::getSuicide($name);
        $data['icon'] = "tuvan.png";
        return view('page.suicide',$data);
    }

    public function suicideDetail($name,$id){
        switch ($name) {
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
                # code...
                $data['tittle'] = "Tư vấn";
                break;
        }
        $data['url'] = $name;
        $data['suicide'] = Suicide::getRetailSuicide($id);
        $data['icon'] = "tuvan.png";
        return view('page.suicideRetail',$data);
    }

    public function news(){
        $data['tittle'] = "Tin tức";
        $data['icon'] = "tuvan.png";
        $data['news'] = News::getNews();
        return view('page.news',$data);
    }
    public function newsRetail($id){
        $data['new'] = News::getRetailNews($id);
        $data['icon'] = "tuvan.png";
        $data['tittle'] = "Tin tức";
        return view('page.newsRetail',$data);
    }
}
