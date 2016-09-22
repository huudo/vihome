<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="google-site-verification" content="9211v6IrzwDO4vs4jLFn2sUg_44PugO_hMMIfQeur00" />
    <meta charset="UTF-8">
    <title>
     Vi-Home        
    </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
     
    <meta name="description" content=""> 
     
    
<link rel="shortcut icon" href="//bizweb.dktcdn.net/100/022/286/themes/28873/assets/favicon.png?1457574486889">
    
<link rel="stylesheet" type="text/css" href={{Asset('public/css/bootstrap.min.css')}}>
<link rel="stylesheet" type="text/css" href={{Asset('public/css/bootstrap-theme.min.css')}}>
<link href='//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet' type='text/css' />

<link rel="stylesheet" type="text/css" href={{Asset('public/css/style.css')}}>
<script type="text/javascript" src={{Asset('public/js/jquery213.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/jquery.hoverdir.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/modernizr.custom.97074.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/api.jquery.js')}}></script>
<script type="text/javascript" src={{Asset('public/js/bootstrap.min.js')}}></script>
</head>
<body>
  <script>
    window.fbAsyncInit = function() {
      FB.init({
        appId      : '1727282974222089',
        xfbml      : true,
        version    : 'v2.5'
      });
    };

    (function(d, s, id){
       var js, fjs = d.getElementsByTagName(s)[0];
       if (d.getElementById(id)) {return;}
       js = d.createElement(s); js.id = id;
       js.src = "//connect.facebook.net/en_US/sdk.js";
       fjs.parentNode.insertBefore(js, fjs);
     }(document, 'script', 'facebook-jssdk'));
  </script>
  @include('includes.header')
  <div id="main" style="padding-top: 66px;">
    <section class="header clearb">
  <div clas="header-slide">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        
        
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <a href="#"><img src="{{Asset('public/images/slide1.jpg')}}" alt="noithatvihome" style="width: 100%;"></a>
        </div>
                
        <div class="item">
          <a href="#"><img src="{{Asset('public/images/slide2.jpg')}}" alt="noithatvihome" style="width: 100%;"></a>
        </div>
                
                
        <div class="item">
          <a href="#"><img src="{{Asset('public/images/slide3.jpg')}}" alt="noithatvihome" style="width: 100%;"></a>
        </div>
                
                 
               
      </div>
      <div class="container">
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span aria-hidden="true"><img src="{{Asset('public/images/arrow_left.png')}}" alt=""></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span aria-hidden="true"><img src="{{Asset('public/images/arrow_right.png')}}" alt=""></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
  </div>
</section>

<section class="banner">
    <div class="container">
        <div class=" inner-banner clearfix">
            <div class="col-md-6 col-sm-9 col-xs-12 type-room">
                <div class="hovereffect">
                     <img class="img-responsive" src="{{Asset('public/images/ban1.jpg')}}" alt="noi-that-phong-khach">
                        <div class="overlay">
                           
                           <a class="info" href="{{URL::to('/thiet-ke/phong-khach')}}">link here</a>
                        </div>
                </div>
            </div>
            <div class="col-md-2 col-sm-3 hidden-xs type-room">
                <div class="hovereffect">
                     <img class="img-responsive" src="{{Asset('public/images/ban2.jpg')}}" alt="noi-that-van-phong">
                     <div class="overlay">                           
                        <a class="info" href="{{URL::to('thiet-ke/van-phong')}}">link here</a>
                     </div>
                </div>
            </div>
            <div class="col-md-2 hidden-sm hidden-xs type-room">
                <div class="hovereffect">
                    <img class="img-responsive" src="{{Asset('public/images/ban3.jpg')}}" alt="noi-that-phong-ngu">
                    <div class="overlay">
                        <a class="info" href="{{URL::to('thiet-ke/phong-ngu')}}">link here</a>
                    </div>
                </div>
            </div>
            <div class="col-md-2 hidden-sm hidden-xs type-room">
                <div class="hovereffect">
                    <img class="img-responsive" src="{{Asset('public/images/ban4.jpg')}}" alt="noi-that-phong-an">
                    <div class="overlay">
                     
                       <a class="info" href="{{URL::to('thiet-ke/phong-an')}}">link here</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- DANH SACH CONG TRINH-->
<section class="sec-news p20">
      <div class="col-md-8 col-md-offset-2">
        <header class="section-title">
            <h2>Danh sách công trình</h2>
            <p></p>
        </header>
      </div>
      <div class="container">
         <div class="row da-thumbs" id="da-thumbs">
            
            <div class="col-md-3 col-sm-6 col-xs-12" id="list_construction">
               <a href="">
                   <img src={{"public/images/1.jpg"}} />
                   <div>
                     <span>Phòng ngủ loại lớn</span>
                     <p>Rộng: 12*10</p>
                     <p>Thiết kế: Lê Hưng</p>
                  </div>
               </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12" id="list_construction">
               <a href="">
                   <img src={{"public/images/2.jpg"}} />
                   <div><span>Menu by Simon Jensen</span></div>
               </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12" id="list_construction">
               <a href="">
                   <img src={{"public/images/3.jpg"}} />
                   <div><span>Menu by Simon Jensen</span></div>
               </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12" id="list_construction">
               <a href="">
                   <img src={{"public/images/4.jpg"}} />
                   <div><span>Menu by Simon Jensen</span></div>
               </a>
            </div>
        
      </div>
</section>

<section class="sec-news p20">
      <div class="col-md-8 col-md-offset-2">
         <header class="section-title">
            <h2>Tin tức mới</h2>
            <p></p>
         </header>
      </div>
    <div class="container">
        <div class="row">
        
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="row">
  <div class="col-md-2 col-sm-2 col-xs-2 blog-entry">
    <p class="entry-day">21</p>
    <p class="entry-month">Tháng 10</p>
    <p class="entry-year">2015</p>
  </div>
  <div class="col-md-10 col-sm-10 col-xs-10 blog-body">
    <a href="/bi-kip-chon-noi-that-cho-phong-khach-chat-hep" class="blog-title">BÍ KÍP CHỌN NỘI THẤT CHO PHÒNG KHÁCH CHẬT HẸP</a>
    <div class="author">
      <span><i class="fa fa-pencil-square-o"></i> Nguyễn Đăng Thắng</span>
      <span><i class="fa fa-comment-o"></i> 1 Nhận xét</span>
    </div>
    <div class="blog-image">
    
      
      
      <img class="img-responsive" src="//bizweb.dktcdn.net/100/005/287/files/8.jpeg?v=1445310686188" alt="">
      
      </div>
      <div class="blog-summary">  Bí kíp chọn nội thất cho phòng khách chật hẹp  

 Nói đến sofa, bạn sẽ nghĩ ngay đến những kiểu sofa có vẻ hơi…bề thế. Việc...</div>
      <a href="/bi-kip-chon-noi-that-cho-phong-khach-chat-hep" class="blog-more">Xem thêm</a>
      </div>
      </div>
            </div>
        
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="row">
  <div class="col-md-2 col-sm-2 col-xs-2 blog-entry">
    <p class="entry-day">15</p>
    <p class="entry-month">Tháng 10</p>
    <p class="entry-year">2015</p>
  </div>
  <div class="col-md-10 col-sm-10 col-xs-10 blog-body">
    <a href="/bai-viet-mau" class="blog-title">10 CÁCH PHỐI MẦU CHO CĂN PHÒNG ĐẸP</a>
    <div class="author">
      <span><i class="fa fa-pencil-square-o"></i> Nguyễn Đăng Thắng</span>
      <span><i class="fa fa-comment-o"></i> 0 Nhận xét</span>
    </div>
    <div class="blog-image">
    
      
      
      <img class="img-responsive" src="//bizweb.dktcdn.net/100/022/286/files/a-1.jpg?v=1445392876849" alt="">
      
      </div>
      <div class="blog-summary"> Đối với gia đình Việt, phòng bếp luôn là nơi quan trọng vì ở đó, gia đình quây quần sum họp bên nhau sau một ngày dài làm việc....</div>
      <a href="/bai-viet-mau" class="blog-more">Xem thêm</a>
      </div>
      </div>
            </div>
        
        </div>
    </div>
</section>
<script type="text/javascript">
   $(function() {       
      $(' #da-thumbs > #list_construction ').each( function() { $(this).hoverdir(); } );
   });
</script>
  </div>
  @include('includes.footer')
</body>
</html>
 
