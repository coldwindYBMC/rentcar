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
	 <input type="hidden"  id="rentprice" value="${carinfo.rentprice }"/>
     <input type="hidden" id="deposit" value="${carinfo.deposit }"/>
     
	<form class="form form-horizontal"  id="form-admin-add"   action="addCheckInfo"  method="post" >
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>检查号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${ck.checkid}"  placeholder=""  id="checkid"  name="checkid"  readonly="readonly">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">属性：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="field" name="field">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">问题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="problem" name="problem">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">赔费：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="paying" name="paying">
			</div>
		</div>
		<!-- 日期 -->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">检查时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd ',minDate:'%y-%M-%d',readOnly:true})" id="checkdate" name="checkdate" class="input-text Wdate" readonly="readonly">
			</div>
		</div>
		<input type="hidden" value="${ck.rentid}"  name="rentid"/>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">检查员：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${ck.username}"  placeholder="" id="username" name="username">
			</div>
		</div>

	

	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;还车&nbsp;&nbsp;">
			<input class="btn btn-primary radius" type="button" onclick="javascript:history.back();" value="&nbsp;&nbsp;返回&nbsp;&nbsp;">
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
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

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
			
			
			rentid:{
				required:true,
				number:true
			},
			checkid:{
				required:true,
				number:true
			},
			checkdate:{
				required:true,
				date:true
			}
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			layer.msg('提交成功!',{icon:1,time:1000});
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