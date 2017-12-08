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
     
	<form class="form form-horizontal"  id="form-admin-add"   action="addRentInfo"  method="post" >
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>出租单号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${renttable.rentid}"  placeholder=""  id="rentid"  name="rentid"  readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>预付金：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${renttable.imprest}" placeholder="" id="imprest" name="imprest">
			</div><span id="depositd" style="float: left;padding-left: 100px;color: orange;" >当前汽车押金：${carinfo.deposit} </span>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">应付金：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="shouldpaypric" name="shouldpaypric">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">实际交付金：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="" placeholder="" id="price" name="price">
			</div>
		</div>
		<!-- 日期 -->
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">起租日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm',minDate:'%y-%M-%d'})" id="begindate" name="begindate" class="input-text Wdate" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">应归还日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm',minDate:'#F{$dp.$D(\'begindate\')}' })" id="shouldreturndate" 
				onblur="shouldReturnDateCheck()"
				name="shouldreturndate" class="input-text Wdate" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">归还日期：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm',minDate:'#F{$dp.$D(\'begindate\')}' })" id="returndate" name="returndate" class="input-text Wdate" readonly="readonly">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>出租单状态：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select name="rentflage" id="rentflage" class="select">
					<option value="0">出租中</option>
					<option value="1">已入库</option>
				</select>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">车号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${renttable.carid}" placeholder="" id="carid" name="carid">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">客户编号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${renttable.custid}" placeholder="" id="custid" name="custid">
			</div>
		</div>
			
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">服务人员编号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" value="${renttable.username}"  placeholder="" id="username" name="username">
			</div>
		</div>

	

	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
			<input class="btn btn-primary radius" type="reset" value="&nbsp;&nbsp;重置&nbsp;&nbsp;">
		</div>
	</div>
	</form>
	
	<div class="mt-20"  style="width: auto;">
		客户信息
			<table
				class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
				<thead>
					<tr class="text-c">
					
						<th width="80">身份证</th>
						<th width="50">客户姓名</th>
						<th width="30">性别</th>
						<th width="100">地址</th>
						<th width="80">电话</th>
						<th width="100">职业</th>
					</tr>
				</thead>
				<tbody>
					
						<tr class="text-c">
							<td>${cust.identity }</td>
							<td>${cust.custname }</td>
							<td>${cust.sex }</td>
							<td>${cust.address }</td>
							<td>${cust.phone }</td>
							<td>${cust.career }</td>
						</tr>
					


				</tbody>
			</table>
		</div>
		<div class="mt-20"  style="width: auto;">
		汽车信息
			<table
				class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
				<thead>
					<tr class="text-c">
					
						<th width="80">车牌号</th>
						<th width="50">车型</th>
						<th width="30">颜色</th>
						<th width="100">价值</th>
						<th width="80">租金</th>
						<th width="100">押金</th>
					</tr>
				</thead>
				<tbody>
					
						<tr class="text-c">
							<td>${carinfo.carnumber }</td>
							<td>${carinfo.cartype }</td>
							<td>${carinfo.color }</td>
							<td>${carinfo.price }</td>
							<td>${carinfo.rentprice }</td>
							<td>${carinfo.deposit }</td>
						</tr>
					
				</tbody>
			</table>
		</div>
	
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
$(function() { 

	$("#rentflage").find("option[value='${renttable.rentflage}']").attr("selected",true);
});

//检测还车日期是否合法
function shouldReturnDateCheck(){
var shouldReturnDate =document.getElementById('shouldreturndate');
 	if(dateCheck(shouldReturnDate.value)){
 		 alert("您输入的时间不合法，请重新输入！");
 		 shouldReturnDate.select();
 	}else{
 	 payMoneyCounts();
 	}
}
//日期检测
	function dateCheck(dObj){
		var dateObj = new Date();
		var dateTemp = dateObj.getFullYear()+'-'+((dateObj.getMonth()+1)<10 ? "0" + dateObj.getMonth()+1 : dateObj.getMonth()+1)+'-'+(dateObj.getDate()<10 ? "0"+ dateObj.getDate() : dateObj.getDate());
		dObj = dObj.replace(/-/g, "/");
		dateTemp = dateTemp.replace(/-/g, "/");
		var dt2=new Date(Date.parse(dObj));  
		var dt3 = new Date(Date.parse(dateTemp));
		if(dt2 < dt3){
			return true;
		}else{
			return false;
		}
	}
//钱数计算
function payMoneyCounts(){
	var beginObj =document.getElementById('begindate').value;
	var shouldReturnDate =document.getElementById('shouldreturndate').value;
	var rentPay = document.getElementById('shouldpaypric');
	var rentPayCount = document.getElementById('rentprice');
	//押金
	var deposit = document.getElementById('deposit');
	//预付金
	var imprest = document.getElementById('imprest');
	    var obj =  GetTime(parseDate(beginObj),'h');
	    var obj2 = GetTime(parseDate(shouldReturnDate),'h');
	    var moneyCount =obj2 - obj;
 		var money = Math.round((moneyCount/24)) <= 0? parseInt(rentPayCount.value):(Math.round(moneyCount/24))*parseInt(rentPayCount.value);
 		
		rentPay.value =money;
		imprest.value = money+parseInt(deposit.value);
}

//拆分时间
function parseDate(strdate){
	var strYear=strdate.substring(0,4);
	var strMonth=strdate.substring(5,7);
	var strDay=strdate.substring(8,10);
	var strHours=strdate.substring(11,13);
	var strMinutes=strdate.substring(14,17);
	return new Date(strYear,strMonth,strDay,strHours,strMinutes); 
}
//计算小时数
function GetTime(dateM,datetype){
     var s;                            // 声明变量。
     var MinMilli = 1000 * 60;         // 初始化变量。
     var HrMilli = MinMilli * 60;
     var DyMilli = HrMilli * 24;
     s="";
     if (datetype=="d"){
    s +=Math.round(Math.abs(dateM/DyMilli))+"天";
     }else if (datetype=="h"){
    s +=Math.round(Math.abs(dateM/HrMilli))+"小时"
     }else if (datetype=="m"){
    s +=Math.round(Math.abs(dateM/MinMilli))+"分";
     } else{
    s +=Math.round(Math.abs(dateM/1000))+"秒"
     }
 return parseFloat(s);                        // 返回结果。
}
window.onload= function(){
var dateObj =new Date();
var beginDate = dateObj.getFullYear()+'-'+((dateObj.getMonth()+1)<10 ? "0" + dateObj.getMonth()+1 : dateObj.getMonth()+1)+'-'+(dateObj.getDate()<10 ? "0"+ dateObj.getDate() : dateObj.getDate());
		document.getElementById('begindate').value = beginDate;
}

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
				minlength:4,
				maxlength:20
			},
			imprest:{
				required:true,
				number:true
			},
			shouldpaypric:{
				required:true,
				number:true
			},
			price:{
				required:true,
				number:true
			},
			begindate:{
				required:true,
				date:true
			},
			shouldreturndate:{
				required:true,
				date:true
			},
			returndate:{
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