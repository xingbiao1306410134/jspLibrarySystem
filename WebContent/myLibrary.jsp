<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的图书馆</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>
	<jsp:include page = "loginContent.jsp" />
	<h1 class = "headcss">我的图书馆</h1>
	<div class = "menu">
		<a href = "myLoan.jsp">借阅记录</a>
		<a href = "nowLoan.jsp">当前借阅</a>
		<a href = "xujie.jsp">续借图书</a>
		<a href = "scanBook.jsp">查阅图书</a>
	</div>
</body>
</html>