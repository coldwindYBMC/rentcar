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
	车辆管理<span class="c-gray en">&gt;</span>查询车辆  <a
		class="btn btn-success radius r"
		style="line-height: 1.6em; margin-top: 3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container">
	<form   action="selCars"   method="post" >
		<div class="text-c">
	<input type="hidden"  value="1"  name="pageNumber"/>
	<input type="hidden"  value="5"  name="pageSize"/>
			车号：<input
				type="text" name="carnumber" id="" placeholder=" 车号"  value=""
				style="width: 200px" class="input-text">车&nbsp;型：<input
				type="text" name="cartype" id="" placeholder=" 车型"  value=""
				style="width: 200px" class="input-text">
		</div>
		<div class="text-c">
			颜色：<input type="text" name="color" id="" placeholder=" 颜色" value=""
				style="width: 200px" class="input-text"> 价&nbsp;格：
				<input type="text" name="price" id="" placeholder=" 价格"  value="0"
				style="width: 200px" class="input-text">

		</div>
		<div class="text-c">

			租金：<input type="text" name="rentprice" id=""  value="0"
				placeholder=" 租金" style="width: 200px" class="input-text">
			押&nbsp;金：<input type="text" name="deposit" id="" placeholder=" 押金"  value="0"
				style="width: 200px" class="input-text">

		</div>
		<div class="text-c">
			&nbsp;&nbsp;状态： <span class="select-box inline"> <select
				name="isrenting" class="select" id="rolesel">
				<option value="0" selected="selected">未出租</option>
				<option value="1">已出租</option>
			</select>
			</span> 
			&nbsp;&nbsp;&nbsp;&nbsp;
			<!-- <input type="submit"  class="btn btn-success" value="查询"/>  -->
			<button name="" id="subbu" class="btn btn-success" type="submit">
				<i class="Hui-iconfont">&#xe665;</i> 查询
			</button> 
		</div>
		
</form> 

		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"> <i class="Hui-iconfont">&#xe6e2;</i>
					批量删除
			</a> <a class="btn btn-primary radius" data-title="添加车辆"
				data-href="carManager/addCar.jsp" onclick="Hui_admin_tab(this)"
				href="javascript:;"> <i class="Hui-iconfont">&#xe600;</i> 添加车辆</a>
				<a class="btn btn-primary radius" data-title="统计" 
				href="/rentcar/carManager/charts.jsp"> <i class="Hui-iconfont">&#xe600;</i> 统计
			</a></span> <span class="r">共有数据：<strong>${pageCar.totalCount }</strong> 条
			</span>
		</div>
		<div class="mt-20">
			<table
				class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
				<thead>
					<tr class="text-c">
						<th width="25"><input type="checkbox" name="" value=""></th>
						<th width="80">序号</th>
						<th >车牌号</th>
						<th width="80">类型</th>
						<th width="30">颜色</th>
						<th width="75">价值</th>
						<th width="75">租金</th>
						<th width="120">操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${pageCar.list }" var="lea" varStatus="vs">
					<tr class="text-c">
						<td><input type="checkbox" value="${lea.carnumber }" name="ident"></td>
						<td>${vs.count }</td>
						<td>${lea.carnumber }</td>
						<td>${lea.cartype }</td>
						<td>${lea.color }</td>
						<td>${lea.price }</td>
						<td>${lea.rentprice }</td>
						<td class="f-14 td-manage">
						 <a style="text-decoration: none" class="ml-5"
							onClick="article_edit('用户编辑','findCar?carnumber=${lea.carnumber}','${vs.count }')"
							href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
							<a style="text-decoration: none" class="ml-5"
							onClick="article_del(this,'${lea.carnumber}')" href="javascript:;"
							title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>

					</tr>

				</c:forEach>
					
			
				</tbody>
			</table>
		</div>
	</div>
	<!--_footer 作为公共模版分离出去-->

	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
		$('.table-sort').dataTable({
			"aaSorting" : [ [ 1, "desc" ] ],//默认第几个排序
			"bStateSave" : true,//状态保存
			"pading" : false,
			"aoColumnDefs" : [
			//{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
			{
				"orderable" : false,
				"aTargets" : [ 0, 7]
			} // 不参与排序的列
			]
		});

		/*资讯-添加*/
		function article_add(title, url, w, h) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*资讯-编辑*/
		function article_edit(title, url, id, w, h) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url,
				
			});
			layer.full(index);
		}
		/*资讯-删除*/
		function article_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				$.ajax({
					type : 'POST',
					url : 'delCar',
					dataType : 'json',
					data:{"carnumber":id},
					success : function(data) {
						
						if(data>0){
							
							$(obj).parents("tr").remove();
							layer.msg('已删除!', {
								icon : 1,
								time : 1000
							});
							
						}
						
					},
					error : function(data) {
						console.log(data.msg);
					},
				});
			});
		}

	
	</script>
</body>
</html>