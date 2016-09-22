@extends('page.pageLayout')
@section('contentPage')
    <div class="content_center">
        <div class="top_center">
            <h2>{{$tittle}}</h2>
        </div>
        @foreach($project as $item)
        <div class="row list_project">
            <div class="col-md-6">  
                <div class="tittle_project">
                    <a href="{{URL::to('du-an')}}/{{$item['id']}}"><p>{{$item['tittle']}}</p></a>
                    
                </div>
                <div class="img_project">
                    <a href="{{URL::to('du-an')}}/{{$item['id']}}"><img src="{{Asset('public/images/uploads')}}/{{$item['img']}}"></a>
                </div>
            </div>
            <div class="col-md-6 retail_text">
                <?php
                  echo str_limit($item['content'], $limit = 500, $end = '...');
                ?>
            </div>
        </div>       
        @endforeach
        <div class="pagination">
            <?php
                echo $project->render();
            ?>
        </div>
    </div>
@stop