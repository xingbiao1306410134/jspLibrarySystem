<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功！</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>
<div style = "width:80%; margin:10% 30% auto;">
<h1>注册成功！请登录</h1>
<h2 id = "showDiv"></h2>
<script type="text/javascript">
window.onload = function () {
    U_jump(10, "login.jsp");
}
// setTimeout 倒计时
function U_jump(Second, Url) {
    document.getElementById("showDiv").innerHTML = Second + " 秒后跳转";
    if (Second-- > 0) {
        setTimeout(function () { U_jump(Second, Url); }, 300);
    } else {
        location.href = Url;
    }
}
</script>
</div>
</body>
</html>