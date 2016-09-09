@extends('admin.default')
<link rel="stylesheet" type="text/css" href="{{Asset('public/css/dropzone.css')}}">
<script type="text/javascript" src={{Asset('public/js/dropzone.js')}}></script>

@section('content')
{{ Form::open(array('url'=>route('admin.upload'), 'class' => 'dropzone dz-clickable','files'=>true)) }}
 
    
        <div class="dz-message">
        <h4>Drag Photos to Upload</h4>
        <span>Or click to browse</span>
        </div>
  {!! Form::close() !!}
 {!! Form::hidden('csrf-token', csrf_token(), ['id' => 'csrf-token']) !!}   
@stop 