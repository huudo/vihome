
    <header>
       <!--  <div id="banner">
            <div class="container-fluid">
                <div class="row">
                    <a href="URL::to('/')">
                    <div class="col-md-4" id="logo">

                    </div>
                    </a>
                    <div class="hidden-xs hidden-sm col-md-5">
                        <h2 class="top_title">Nội thất thông minh</h2>
                    </div>
                    <div class="hidden-xs hidden-sm hidden-md col-md-3" align="right">
                        <div id="hot_line">
                            <p><i class="fa fa-phone"></i>0966686892</p>
                        </div>
                        <div id="icon_link">
                            <a target="_blank"  href="https://www.facebook.com/ESP-English-1698612423715540/?ref=br_rs"><i class="fa fa-facebook-official"></i></a>
                            <a target="_blank" href=""><i class="fa fa-twitter-square"></i></a>
                            <a target="_blank" href=""><i class="fa fa-google-plus-square"></i></a>
                            <a target="_blank" href=""><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </header>
    <div id="wrapper" style="position: fixed;z-index: 999999;width: 100%;">
        <div id="menu">
            <div id="sub_menu">
                <nav class="navbar navbar-default" align="left">
                    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <div class="row">
                            <div class="col-md-3 hidden-sm hidden-md hidden-lg">
                                <p id="slogan_small"> BEYOND YOUR LIMITS!</p>
                            </div>
                            <div class='col-md-9'>
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                        </div>      
                    
                    </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-left ">  
                            <li class="hidden-sm hidden-md hidden-xs img_logo" >
                                <a href="{{URL::to('/')}}">
                                    <img src="{{Asset('public/images/logo.png')}}" style="width:150px;height:40px;margim-top:-20px">
                                </a>
                            </li>
                            <li><a href="{{URL::to('/')}}"><i class="fa fa-home"></i> Trang chủ <span class="sr-only">(current)</span></a></li>
                            <li><a href="#"><i class="fa fa-bullhorn"></i>Giới thiệu</a></li>
                            <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-graduation-cap"></i> Thiết kế<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="{{URL::to('/thiet-ke/van-phong')}}">Nội thất văn phòng</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="{{URL::to('/thiet-ke/phong-khach')}}">Nội thất phòng khách</a></li>     
                                <li role="separator" class="divider"></li>
                                <li><a href="{{URL::to('/thiet-ke/phong-an')}}">Nội thất phòng ăn</a></li>     
                                <li role="separator" class="divider"></li>
                                <li><a href="{{URL::to('/thiet-ke/phong-ngu')}}">Nội thất phòng ngủ</a></li>                
                              </ul>
                            </li>
                            
                            <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-tasks"></i>Tư vấn<span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="{{URL::to('/tu-van/noi-that')}}">Tư vấn nội thất</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="{{URL::to('/tu-van/kien-truc')}}">Tư vấn kiến trúc</a></li>     
                                <li role="separator" class="divider"></li>
                                <li><a href="{{URL::to('/tu-van/xay-dung')}}">Tư vấn xây dựng</a></li>     
                                <li role="separator" class="divider"></li>
                                <li><a href="{{URL::to('/tu-van/phong-thuy')}}">Tư vấn phong thủy</a></li>     
                              </ul>
                            </li>
                            <li><a href="{{URL::to('/du-an')}}"><i class="fa fa-bullhorn"></i>Dự án</a></li>
                            <li><a href="{{URL::to('/tin-tuc')}}"><i class="fa fa-bullhorn"></i>Tin tức</a></li>
                            <li><a href="URL::to('/bang-gia')"><i class="fa fa-bullhorn"></i>Bảng giá</a></li>
                            <li role="separator" class="divider"></li>                            
                            <li><a href="{{URL::to('lien-he')}}"><i class="fa fa-bullhorn"></i>Liên hệ</a></li>
                            </ul>
                         
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
                
        </div>
    </div>    
<style type="text/css">
    .dropdown-submenu {
    position: relative;
}

.dropdown-submenu>.dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -6px;
    margin-left: -1px;
    -webkit-border-radius: 0 6px 6px 6px;
    -moz-border-radius: 0 6px 6px;
    border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}

.dropdown-submenu>a:after {
    display: block;
    content: " ";
    float: right;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    border-left-color: #ccc;
    margin-top: 5px;
    margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}

.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
    -webkit-border-radius: 6px 0 6px 6px;
    -moz-border-radius: 6px 0 6px 6px;
    border-radius: 6px 0 6px 6px;
}
</style>
