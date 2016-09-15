@extends('admin.default')

@section('content')
    <div class="row">
        <div class="col-md-12 top_content"> 
            <h2>{{$tittle}}</h2>
        </div>
        <div class="col-md-12 detail_content">
            <div class="col-md-6">
                <h2>Danh sách dự án</h2>
            </div>
            <div class="col-md-6 create_new">
                <a href="{{URL::to('admin/thietke/createNew')}}/{{$url}}"><p><i class="fa fa-plus-square" aria-hidden="true"></i> Tạo mới</p></a>
            </div>            
        </div>
    </div>
    <div class="row productList">

        @foreach($projects as $project)
        <div class="product col-md-3">
                <div class="detailProduct">
                    <p>{{$project['tittle']}}</p>
                </div>
                <div class="imgProduct">
                    <a href="{{URL::to('admin/thietke/createNew')}}/{{$url}}/{{$project['id']}}">
                          <img src="{{Asset('public/images/uploads')}}/{{$project['img']}}">
                    </a>
                  
                </div>                
        </div>
        @endforeach
    </div>
@stop 