<html>
<head>
    <title></title>
    <meta name="csrf-token" content="{!! csrf_token() !!}">
    <link rel="stylesheet" type="text/css" href={{Asset('public/css/bootstrap.min.css')}}>

    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{Asset('public/css/admin/style.css')}}">
   
    <script type="text/javascript" src={{Asset('public/template/ckeditor/ckeditor.js')}} ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
    <script type="text/javascript" src={{Asset('public/js/bootstrap.min.js')}}></script>
</head>
<body>
<div class="nav-side-menu">
    <div class="brand">NỘI THẤT VIHOME</div>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
    <div class="menu-list">
        <ul id="menu-content" class="menu-content collapse out">
            <li>
                <a href="#">
                    <i class="fa fa-dashboard fa-lg"></i> Quản lý danh mục
                </a>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa-user fa-lg"></i> Giao diện
                </a>
            </li>
            <li data-toggle="collapse" data-target="#service" class="collapsed">
                <a href="#"><i class="fa fa-globe fa-lg"></i> Thiết kế <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="service">
                <li><a href="{{URL::to('admin/thiet-ke/office')}}">Phòng làm việc</a></li>
                <li><a href="{{URL::to('admin/thiet-ke/living')}}">Phòng khách</a></li>
                <li><a href="{{URL::to('admin/thiet-ke/bedroom')}}">Phòng ngủ</a></li>
                <li><a href="{{URL::to('admin/thiet-ke/eating')}}">Phòng ăn</a></li>
            </ul>           
            <li>
                <a href="{{URL::to('admin/thiet-ke/du-an')}}">
                    <i class="fa fa-user fa-lg"></i> Dự án
                </a>
            </li>
            <li data-toggle="collapse" data-target="#tu_van" class="collapsed">
                <a href="#"><i class="fa fa-globe fa-lg"></i> Tư vấn <span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="tu_van">
                <li><a href="{{URL::to('admin/tu-van/noi-that')}}">Tư vấn nội thất</a></li>
                <li><a href="{{URL::to('admin/tu-van/kien-truc')}}">Tư vấn kiến trúc</a></li>
                <li><a href="{{URL::to('admin/tu-van/xay-dung')}}">Tư vấn xây dựng</a></li>
                <li><a href="{{URL::to('admin/tu-van/noi-that')}}">Tư vấn phong thủy</a></li>
            </ul>
            <li>
                <a href="{{URL::to('admin/tin-tuc')}}">
                    <i class="fa fa-user fa-lg"></i>Tin tức
                </a>
            </li>           
        </ul>
    </div>
</div>
<div class="container" id="main">
    <div class="row">
        <div class="col-md-12">
           
           @yield('content')
        </div>
    </div>
</div>
<script type="text/javascript">
    
</script>
</body>
</html>