<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Advanced form elements</title>
  <!--  include header-->
 <%@ include file="../inc/header_link.jsp" %>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<%@ include file="../inc/topbar.jsp" %>
<%@ include file="../inc/sidebar.jsp" %>



  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Advanced Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Advanced Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">카테고리 관리</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>상위카테고리</label>
                  	<div class="row"  style="margin:1px;">
                  		<input type="text" class="form-control col-md-11" name="category_name">
                  		<button class="btn btn-primary col-md-1" onClick="registTop()">등록</button>
                  	</div>
                  <select class="form-control select" style="width: 100%;" size="20" name="topCategory">
                    <option selected="selected"></option>
                  </select>
                </div>
                 <button class="btn btn-primary" >등록</button>
                <button class="btn btn-primary">삭제</button>
              </div>
              <!-- /.col -->
            <div class="col-md-6">
                <div class="form-group">
                  <label>하위 카테고리</label>
                  <div class="row" style="margin:1px;">
                  		<input type="text" class="form-control col-md-11" name="category_name">
                  		<button class="btn btn-info col-md-1" onClick="registSub()">등록</button>
                  	</div>
                  <select class="form-control select" style="width: 100%;" size="20">
                  </select>
                </div>
                <button class="btn btn-info">등록</button>
                <button class="btn btn-info">삭제</button>
              </div>
            </div>

          </div>
          <!-- /.card-body -->
          <div class="card-footer">
   			원하시는 아이템을 선택 후 삭제 및 수정이 가능하빈다
          </div>
        </div>
        <!-- /.card -->

        <!-- SELECT2 EXAMPLE -->
        
       <!-- ------------------------ -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/static/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/static/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="/static/admin/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="/static/admin/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="/static/admin/plugins/moment/moment.min.js"></script>
<script src="/static/admin/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="/static/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="/static/admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/static/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="/static/admin/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="/static/admin/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="/static/admin/plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="/static/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="/static/admin/dist/js/demo.js"></script> -->
<!-- Page specific script -->
<script>


function registTop(){
	$.ajax({
		url:"/rest/admin/topcategory",
		type:"post",
		data:{
			category_name:$($("input[name='category_name']")[0]).val()
		},
		success:function(result, status, xhr){
			alert(status);
			getTopList();
		},
		error:function(xhr,status,error){
			alert(status+","+error);
		}
		
	});
	
}

function getTopList(){
	$.ajax({
		url:"/rest/admin/topcategory",
		type:"get",
		success:function(result,status,xhr){
			printTopList(result);
		},
		error:function(xhr,status,error){
			alert(status+","+error);
		}
	});
}

function printTopList(jsonArray){
	var sel=$($("select")[0]);
	$(sel).empty();
	for(var i=0; i<jsonArray.length; i++){
		var topcategory =jsonArray[i];
		$(sel).append("<option value=\""+topcategory.topcategory_id +"\">"+topcategory.category_name+"</option>");
	}
	
}

function registSub(){
	if($($("select")[0]).prop('selectedIndex')==-1){
		alert("좌측 영역에서 하나라도 선택하세요");
		return;
	}
	
	$.ajax({
		url:"/rest/admin/subcategory",
		type:"post",
		data:{
			"category_name":$($("input[name='category_name']")[1]).val(),
			"topcategory.topcategory_id":$($("select")[0]).val()
		},
		success:function(result,status,xhr){
			alert(result);
			getSubList($($("select")[0]).val());
		},
		error:function(xhr,status,error){

		}
	});
}
function getSubList(topcategory_id){
	$.ajax({
		url:"/rest/admin/subcategory/"+topcategory_id ,
		type:"get",
		success:function(result,status,xhr){
			printSubList(result);
		},
		error:function(xhr,status,error){
			alert(status+","+error);
		}
		
	});
	
}
function printSubList(jsonArray){
	var sel=$($("select")[1]);
	$(sel).empty();
	for(var i=0; i<jsonArray.length; i++){
		var subcategory =jsonArray[i];
		$(sel).append("<option value=\""+subcategory.subcategory_id +"\">"+subcategory.category_name+"</option>");
	}
	
}

$(function () {
	getTopList();
	
	$($("select")[0]).change(function(){
		//alert("당신이 선택한 아이템의 value값은 " + $(this).val())
		getSubList($(this).val());
		
	});
  
});
</script>
</body>
</html>
