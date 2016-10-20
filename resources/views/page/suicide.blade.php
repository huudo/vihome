@extends('page.pageLayout')
@section('contentPage')
    <div class="content_center">
        <div class="top_center">
            <h2>{{$tittle}}</h2>
        </div>
        @foreach($suicides as $item)
        <div class="col-md-12">
            <div class="row list_project">
                <div class="col-md-12">
                    <div class="tittle_project">
                        <a href="{{URL::to('tu-van')}}/{{$url}}/{{$item['id']}}"><p>{{$item['tittle']}}</p></a>                        
                    </div>
                </div>
                <div class="col-md-6">                     
                    <div class="img_project">
                        <a href="{{URL::to('tu-van')}}/{{$url}}/{{$item['id']}}"><img src="{{Asset('public/images/uploads/suicide')}}/{{$item['img']}}"></a>
                    </div>
                </div>
                <div class="col-md-6">
                    <?php
                      echo str_limit($item['content'], $limit = 500, $end = '...');
                    ?>
                </div>
            </div>       
        </div>
        
        @endforeach
        <div class="pagination">
            <?php
                echo $suicides->render();
            ?>
        </div>
    </div>
    <script type="text/javascript">
        var height = $('.container').height();
        var hNav = height.toString() + "px";
        $('.navbar_left').css({height:hNav});
    </script>
@stop