@extends('admin.default')
<link rel="stylesheet" type="text/css" href="{{Asset('public/css/dropzone.css')}}">
<script type="text/javascript" src={{Asset('public/js/dropzone.js')}}></script>

@section('content')
    <div class="row">
        <div class="col-md-12 top_content"> 
            <h2>{{$tittle}}</h2>
        </div>
    </div>
    <div class="row container_center">
        <form action="{{URL::to('admin/thiet-ke/createNew/')}}/{{$url}}" method="POST" enctype="multipart/form-data">
            <div class="col-md-12">   
                <p>Tiêu đề</p>
                <input class="project_tittle" name="tittle" required>
                <p>Bài viết</p>
                <textarea id="editor" class="ckeditor" name="content" required></textarea>  
  
                <script type="text/javascript">  
                    CKEDITOR.replace( 'editor' );  
                </script>
                <p>Chọn ảnh cho dự án</p>  
                {!! Form::file('images[]', array('multiple'=>true)) !!}
                @if(Session::has('error'))
                    <p class="errors">{!! Session::get('error') !!}</p>
                @endif
                <input type="submit" value="Tạo tin" name="btn_create" class="btn btn-success" />
               
                <input type="hidden" name="_token" value="{{ csrf_token() }}">

            </div> 
        </form>    
            
    </div>
@stop 