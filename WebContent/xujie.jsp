<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>续借图书</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>
<jsp:include page = "loginContent.jsp" />
<h1 class = "headcss">续借</h1>

<div class = "menu">
<p><span>请输入借阅号：</span></p><input type = "text" name = "id" /><input type = "submit" value = "续借"/>


</div>
</body>
</html>