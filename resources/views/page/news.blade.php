@extends('layouts.default')
@section('content')
    <div class="content_center">
        @foreach($news as $item)
        <div class="col-md-12">
            <div class="row list_project">
                <div class="col-md-12">
                    <div class="tittle_project">
                        <a href="{{URL::to('tin-tuc/')}}/{{$item['id']}}"><p>{{$item['tittle']}}</p></a>
                        
                    </div>
                </div>
                <div class="col-md-4">  
                    
                    <div class="img_project">
                        <a href="{{URL::to('tin-tuc/')}}/{{$item['id']}}"><img src="{{Asset('public/images/uploads/news')}}/{{$item['img']}}"></a>
                    </div>
                </div>
                <div class="col-md-8 retail_news">
                    <?php
                      echo str_limit($item['content'], $limit = 500, $end = '...');
                    ?>
                </div>
        </div>       
        </div>
       
        @endforeach
        <div class="pagination">
            <?php
                echo $news->render();
            ?>
        </div>
    </div>
@stop