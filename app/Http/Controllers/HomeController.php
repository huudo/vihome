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
        return view('page.project',$data);
    }

    public function design($name){
         switch ($name) {
            case 'van-phong':
                $design_id = 1;
                $data['tittle'] = "Nội thất văn phòng";
                break;
            case 'phong-khach':
                $design_id = 2;
                $data['tittle'] = "Nội thất phòng khách";
                break;
            case 'phong-an':
                $design_id = 3;
                $data['tittle'] = "Nội thất phòng ngủ";
                break;
            case 'phong-ngu':
                $design_id = 4;
                $data['tittle'] = "Nội thất phòng ăn";
                break;    
            default:
                # code...
                $data['tittle'] = "Dự án";
                $design_id = 0;
                break;
        }
        $data['name'] = $name;
        $data['project'] = Project::getProject($design_id);
        return view('page.design',$data);
    }

    public function design_retail($name,$id){
        $data['project'] = Project::getProjectDetail($id);
        $data['images'] = ProjectImg::getFirstImg($id);
        return view('page.design_retail',$data);
    }
}
