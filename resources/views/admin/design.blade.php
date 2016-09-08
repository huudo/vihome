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
        <div class="product col-md-3">
                <div class="imgProduct">
                    <img src="">
                </div>
                <div class="detailProduct">
                    <p>Tiêu đề</p>
                </div>
        </div>
    </div>
@stop 