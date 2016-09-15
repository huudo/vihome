@extends('admin.default')
@section('content')
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
</style>
    <div class="row">
        <div class="col-md-12 top_content"> 
            <h2>{{$tittle}}</h2>
        </div>
    </div>
    <div class="row container_center">
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            @for($i = 1; $i < $countImg; $i++)
            <li data-target="#myCarousel" data-slide-to="{{$i}}"></li>
            @endfor
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            @foreach($img as $imgs)
            <div class="item active">
              <img src="{{Asset('public/images/uploads')}}/{{$imgs['url']}}" alt="">
            </div>
            @endforeach
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>           
    </div>
@stop 