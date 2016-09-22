@extends('layouts.default')
@section('content')
    <style type="text/css">
        .sb-slider{
            width: 80%;
            margin: 0px auto;
        }
        .sb-slider img{
            width: 100%;
            height: auto;
        }
    </style>
    <div class="row bg_background">
    <div class="content_center">
        <div class="top_center">
            <h2>{{$suicide['tittle']}}</h2>
        </div>
        <div class="wrapper">
            <ul id="sb-slider" class="sb-slider">                
                    
                        <img src="{{Asset('public/images/uploads/suicide')}}/{{$suicide['img']}}" alt="{{$suicide['tittle']}}"/>                            
            </ul>

            <div id="shadow" class="shadow"></div>
        </div><!-- /wrapper -->
        <div class="content_detail">
            <div class="introduce">
                <h3>Mô tả</h3>
            </div>
            
            <div class="details_content">
                <?php
                    echo $suicide['content'];
                ?>
            </div> 
            
        </div>
    </div>
</div>
@stop