@extends('layouts.default')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-3 hidden-sm hidden-md hidden-xs">
                <div class="navbar_left">
                    <div class="navbar navbar-fixed-left">
                        <ul class="nav navbar-nav">
                        <li>
                            <p>Nội thất Vi-home</p>
                        </li>
                        <li><a href="{{URL::to('thiet-ke/van-phong')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Nội thất văn phòng</a></li>
                        <li><a href="{{URL::to('thiet-ke/phong-khach')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Nội thất phòng khách</a></li>
                        <li><a href="{{URL::to('thiet-ke/phong-ngu')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Nội thất phòng ngủ</a></li>
                        <li><a href="{{URL::to('thiet-ke/phong-an')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Nội thất phòng ăn</a></li>
                        <li><a href="{{URL::to('du-an')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Dự án nội thất</a></li>
                        <li><a href="{{URL::to('tu-van/noi-that')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Tư vấn nội thất</a></li>
                        <li><a href="{{URL::to('tu-van/kien-truc')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Tư vấn kiến trúc</a></li>
                        <li><a href="{{URL::to('tu-van/xay-dung')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Tư vấn xây dựng</a></li>
                        <li><a href="{{URL::to('tu-van/phong-thuy')}}"><i class="fa fa-angle-right" aria-hidden="true"></i>Tư vấn phong thủy</a></li>
                        </ul>
                    </div>
                </div>
               
            </div>
            <div class="col-md-9">
                @yield('contentPage')
            </div>
        </div>
    </div>
@stop