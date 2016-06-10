<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册用户</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" href="css/login.css" type="text/css" />
<style>
	tr{
		height:40px;
		font-size:20px;
	}
</style>
</head>
<body>
<form action = "register" method = POST>
<div>
</div>
<div class="body">
<div class="body_in">
<div class="mainbody_out">
<div class="mainbody_in">
<div class="mainbody">				
<div class="weilcomeinfo">
	<a href="login.jsp" class="backhome">返回登录</a>
</div>
<div class="content">
<div class="login">						
<div class="loginbox">
<div class="loginboxin">
<div class="title">
注册新用户 
<%
	if(request.getParameter("fail") != null)
	{
		request.removeAttribute("fail");
		out.print("<span>注册失败！用户名同名或格式错误");
	}
%>
</div>
<div style = "padding:10px 0 0 50px;height:200px;">


<table>
<tr>
<td><label>用户名   </label></td><td>
<input name="userName" type="text" id="txtName"></td>
</tr>

<tr>
<td><label>密　码   </label></td><td>
<input name="passwd" type="password" id="txtPassWord"></td>
</tr>


<tr>
<td><label>身份证   </label></td><td>
<input name="idCard" type="text" id="txtPassWord"></td>
</tr>

<tr>
<td><label>邮 箱</label></td><td>
<input name="email" type="text" id="txtPassWord"></td>
</tr>

<tr>
<td><label>手机号    </label></td><td>
<input name="phone" type="text" id="txtPassWord"></td>
</tr>

</table>
</div>
<div style=" border-top:1px dashed #b7b7b7;"></div>
<div class="loginsub">
<input type="submit" name="BtnLogin" value="注  册" id="BtnLogin"style = "width:10% ; margin:0 auto;"/>
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
