<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"   src="lib/jquery/1.9.1/jquery.js"></script>
<link href="static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(function() {
		alert("jquery");
	});

</script>
<title>Insert title here</title>
</head>
<body>
  
</body>
</html>