<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"></base>

<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>查询车辆</title>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>

</head>
<body>
	<nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	角色管理<span class="c-gray en">&gt;</span>查询角色  <a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container">
	<form   action="selRoles"   method="post" >
		<div class="text-c">
	
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;角色id：<input
				type="text" name="roleid" id="" placeholder=" id"  value="0"
				style="width: 200px" class="input-text">角色名称：<input
				type="text" name="rolename" id="" placeholder=" 角色"  value=""
				style="width: 200px" class="input-text">
		
			&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <input type="submit"  class="btn btn-success" value="查询"/>  -->
			<button name="" id="subbu" class="btn btn-success" type="submit">
				<i class="Hui-iconfont">&#xe665;</i> 查询
			</button> 
		</div>
		
</form> 

		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"> <a class="btn btn-primary radius" data-title="添加角色"
				data-href="preAddRole" onclick="Hui_admin_tab(this)"
				href="javascript:;"> <i class="Hui-iconfont">&#xe600;</i> 添加角色
			</a></span> 
		</div>
		<div class="page-container">
	<table class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="6">角色管理</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="200">角色名</th>
				<!-- <th>用户列表</th> -->
				
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="lea" varStatus="vs">
			<tr class="text-c">
				<td><input type="checkbox" value="" name=""></td>
				<td>${lea.roleid}</td>
				<td>${lea.rolename}</td>
				<!-- <td><a href="#">admin</a></td> -->
				<td class="f-14"><a title="编辑" href="javascript:;" onclick="admin_role_edit('角色编辑','preUpdateRole?roleid=${lea.roleid}','1')" 
				style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a
								title="删除" href="javascript:;"
								onclick="admin_role_del(this,'${lea.roleid}')" class="ml-5"
								style="text-decoration: none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript">
/*管理员-角色-添加*/
function admin_role_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*管理员-角色-编辑*/
function admin_role_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*管理员-角色-删除*/
function admin_role_del(obj,id){
	layer.confirm('角色删除须谨慎，确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: 'delRole',
			data:{"roleid":id},
			dataType: 'json',
			success: function(data){
				if(data>0){
					$(obj).parents("tr").remove();
					layer.msg('已删除!',{icon:1,time:1000});
				}
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}
</script>
</body>
</html>