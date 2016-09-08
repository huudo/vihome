<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

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
                break;
        }
        return view('admin.design',$data);
    }

    public function officeCreate(){
        
    }
    
}
