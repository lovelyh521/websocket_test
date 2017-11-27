<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
	String basePath2 = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script type="text/javascript" src="<%=basePath2%>resources/jquery-3.2.1.min.js"></script>
<script>
	function sub() {
		var id = $("#myid").val();
		console.log(id)
		location.href="/msg/talk?id="+id;
    }
</script>
</head>
<body>
	欢迎：${sessionScope.name }你要和谁对话
	<select id="myid" >
		<option value="1">张三</option>
		<option value="2">李四</option>
		<option value="3">王五</option>
	</select><br>
	<button type="button" onclick="sub()" id="sub">确定</button>
</body>
</html>
