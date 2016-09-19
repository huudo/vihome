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
        $data['project'] = Project::getProject($id);
        return view('page.project',$data);
    }
}
