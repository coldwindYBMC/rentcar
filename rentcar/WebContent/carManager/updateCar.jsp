<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"></base>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>修改车辆</title>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 


</head>
<body>
<article class="page-container">
	<form class="form form-horizontal" id="form-admin-add"  enctype="multipart/form-data"  action="updateCar" method="post" >
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>车号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cari.carnumber}" placeholder="" id="carnumber" name="carnumber">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>型号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cari.cartype}" placeholder="" id="cartype" name="cartype">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">颜色：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cari.color}" placeholder="" id="color" name="color">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>出租状态：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select name="isrenting" id="isrenting" class="select">
					<option value="0">未出租</option>
					<option value="1">已出租</option>
				</select>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">价值：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cari.price}" placeholder="" id="price" name="price">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">租金：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cari.rentprice}" placeholder="" id="rentprice" name="rentprice">
			</div>
		</div>
			
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">押金：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${cari.deposit}"  placeholder="" id="deposit" name="deposit">
			</div>
		</div>

	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">图片：</label>
			<div class="formControls col-xs-8 col-sm-9"> <span class="btn-upload form-group">
				<input class="input-text upload-url" type="text" value="${cari.carimg}" name="uploadfile" id="uploadfile" readonly nullmsg="请添加附件！" style="width:200px">
				<a href="javascript:void();" class="btn btn-primary radius upload-btn"><i class="Hui-iconfont">&#xe642;</i> 浏览文件</a>
				<input type="file" name="image" class="input-file">
	           
				</span>  <img src="${cari.carimg}" alt=""  width="200px"/></div>
		</div>
			<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">备注：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea  name="cardesc" cols="" rows=""   class="textarea"  placeholder="说点什么..." onKeyUp="$.Huitextarealength(this,100)">${cari.cardesc}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/100</p>
			</div>
		</div>

	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
	</form>
</article>

<!--_footer 作为公共模版分离出去--> 

<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript">
$(function() { 
	
	
	var carnumber='${param.carnumber}';
	/* alert(carnumber); */
	$("#isrenting").find("option[value='${cari.isrenting}']").attr("selected",true);
});

</script>
<script type="text/javascript">
$(function(){
	
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-admin-add").validate({
		rules:{
			
			carnumber:{
				required:true,
				minlength:4,
				maxlength:10
			},
			color:{
				required:true,
			},
			price:{
				required:true,
				number:true
			},
			uploadfile:{
				required:true,
			},
			rentprice:{
				required:true,
				number:true
			},
			deposit:{
				required:true,
				number:true
			},
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			
			layer.msg('修改成功!',{icon:1,time:1000});
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			return true;
			parent.layer.close(index);
		}
	});
});
</script> 
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>