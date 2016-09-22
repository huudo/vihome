@extends('admin.default')

@section('content')
    <div class="row">
        <div class="col-md-12 top_content"> 
            <h2>{{$tittle}}</h2>
        </div>
        <div class="col-md-12 detail_content">
            <div class="col-md-6">
                <h2>Bài viết tư vấn</h2>
            </div>
            <div class="col-md-6 create_new">
                <a href="{{URL::to('admin/tu-van/tao-moi')}}/{{$url}}"><p><i class="fa fa-plus-square" aria-hidden="true"></i> Tạo mới</p></a>
            </div>            
        </div>
    </div>
   
    @foreach($suicides as $suicide)
    <div class="row productList">
        <div class="product col-md-3">
            <div class="imgProduct">
                <a href="{{URL::to('admin/tu-van/')}}/{{$url}}/{{$suicide['id']}}">
                      <img src="{{Asset('public/images/uploads/suicide')}}/{{$suicide['img']}}">
                </a>                  
            </div>                  
        </div>
        <div class="detailProduct col-md-9">
            <div class="center_text">
                <h2><a href="{{URL::to('admin/tu-van/')}}/{{$url}}/{{$suicide['id']}}">{{$suicide['tittle']}}</a></h2>
                <p>
                    <?php
                        echo str_limit($suicide['content'], $limit = 500, $end = '...');
                    ?>
                </p>
            </div>
            <div class="action_btn">
                <a href="{{URL::to('admin/tu-van')}}/{{$url}}" class="btn_create" id={{$suicide['id']}} data-service={{$suicide['id']}}>Xóa</a>
            </div>    
        </div>
    </div>
    <script type="text/javascript">
        $(function() {
        $('.btn_create').click(function () {
        var service = $(this).attr('data-service');
        jQuery.ajax({
                    crossDomain: false,
                    url: "delete",
                    type: "POST",
                    dataType: "json",
                    processdata: true,
                    data: {
                        "service": service,
                        '_token': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function() {
                       console.log(12);
                    },
                    error: function (error) {
                        console.log(error);
                        //alert("xhr=" + xhr + " b=" + b + " c=" + c);
                    }
                });    
            });
        });
    </script>        
    @endforeach
@stop    