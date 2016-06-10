<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body style = "text-align:center;">
	<jsp:include page = "./loginContent.jsp" />
	<h1>管理员：图书管理系统</h1>
	<div  class = "menu">
		<a href = "addBook.jsp" >录入图书</a>
		<a href = "scanAll.jsp" >查看所有图书</a>
		<a href = "scanLoan.jsp">查看借阅</a>
		<a href = "scanBook.jsp">查询图书</a>
		<a href = "">归还图书</a>
		<a href = "">借阅</a>
	</div>
</body>
</html>