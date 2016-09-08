@extends('admin.default')

@section('content')
    <div class="row">
        <div class="col-md-12 top_content"> 
            <h2>{{$tittle}}</h2>
        </div>
        <div class="col-md-12 detail_content">
            <div class="col-md-6">
                <h2>Tạo dự án mới</h2>
            </div>
            <div class="col-md-12">
                <div class="formCreate">
                    <form action="" method="POST">
                        <p>Tiêu đề</p>
                        <input class="projectTittle">
                        <p>Mô tả</p>
                        <textarea id="editor1" class="ckeditor" name="vietnam" required></textarea>  
  
                        <script type="text/javascript">  
                            CKEDITOR.replace( 'editor1' );  
                        </script>  
                        
                    </form>
                </div>
            </div>           
        </div>
    </div>
    
@stop 