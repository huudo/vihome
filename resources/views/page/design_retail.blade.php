@extends('layouts.default')
@section('content')
    <link rel="stylesheet" type="text/css" href={{Asset('public/css/slide/demo.css')}}>
    <link rel="stylesheet" type="text/css" href={{Asset('public/css/slide/slicebox.css')}}>
    <link rel="stylesheet" type="text/css" href={{Asset('public/css/slide/custom.css')}}>
    <script type="text/javascript" src={{Asset('public/js/slide/modernizr.custom.46884.js')}}></script>
    <div class="row bg_background">
    <div class="content_center">
        <div class="top_center">
            <h2>{{$project['tittle']}}</h2>
        </div>
        <div class="wrapper">
            <ul id="sb-slider" class="sb-slider">
                @foreach($images as $item)
                    <li>
                        <img src="{{Asset('public/images/uploads')}}/{{$item['url']}}" alt="image1"/>
                        <div class="sb-description">
                            <h3>{{$project['tittle']}}</h3>
                        </div>
                    </li>
                @endforeach               
            </ul>

            <div id="shadow" class="shadow"></div>
        </div><!-- /wrapper -->
        <div class="content_detail">
            <div class="introduce">
                <h3>Mô tả</h3>
            </div>
            
            <div class="details_content">
                <?php
                    echo $project['content'];
                ?>
            </div> 
            
        </div>
        <script type="text/javascript" src={{Asset('public/js/slide/jquery.slicebox.js')}}></script>
        <script type="text/javascript">
            $(function() {
                
                var Page = (function() {

                    var $navArrows = $( '#nav-arrows' ).hide(),
                        $shadow = $( '#shadow' ).hide(),
                        slicebox = $( '#sb-slider' ).slicebox( {
                            onReady : function() {

                                $navArrows.show();
                                $shadow.show();

                            },
                            orientation : 'r',
                            cuboidsRandom : true,
                            disperseFactor : 30
                        } ),
                        
                        init = function() {

                            initEvents();
                            
                        },
                        initEvents = function() {

                            // add navigation events
                            $navArrows.children( ':first' ).on( 'click', function() {

                                slicebox.next();
                                return false;

                            } );

                            $navArrows.children( ':last' ).on( 'click', function() {
                                
                                slicebox.previous();
                                return false;

                            } );

                        };

                        return { init : init };

                })();

                Page.init();

            });
        </script>
    </div>
</div>
@stop