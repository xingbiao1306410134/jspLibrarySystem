<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" href="css/login.css" type="text/css" />
<title>登录图书馆</title>
</head>
<body>
<form action = "login" method = POST>
<div>
</div>
<div class="body">
<div class="body_in">
<div class="mainbody_out">
<div class="mainbody_in">
<div class="mainbody">				
<div class="weilcomeinfo">
	<a href="" class="backhome">weilcome</a>
</div>
<div class="content">
<div class="login">						
<div class="loginbox">
<div class="loginboxin">
<div class="title">登录我的图书馆</div>
<div class="loginmain">
<p>
<label>用户名　</label>
<input name="userName" type="text" id="txtName">
</p>
<p>
<label>密　码　</label>
<input name="passwd" type="password" id="txtPassWord">

</p>
</div>
<div style=" border-top:1px dashed #b7b7b7;"></div>
<div class="loginsub">
<input type="checkbox" value="admin" name="admin">
管理员登录<a href="">忘记密码</a><a href = "register.jsp" >注册</a></div>
<div class="regsub">
<input type="submit" name="BtnLogin" value="登 录" id="BtnLogin">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>