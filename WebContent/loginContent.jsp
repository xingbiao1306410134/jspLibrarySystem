<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "org.book.*"%>
    <%@ page errorPage="error.jsp"%>
<div style = "width:100%; height:30px;padding:6px; background-color: #e3d5e9;margin:0 auto;">
<div style = "float:right;right:20%; position: relative;">
	<%
		//debug
		//System.out.print(session.getAttribute("class"));
		//System.out.print(session.getAttribute("user"));
		
		
		if(session.getAttribute("class") == null)
		{
			System.out.print("foward to loginFail.html\n");
			%>
			<jsp:forward  page = "loginFail.html" />
			//response.sendRedirect(request.getContextPath()+"/loginFail.html");
			//System.out.print("foward to loginFail.html\n");
			//return;
			<%
		}
		String userClass = (String)session.getAttribute("class");
		Object user = session.getAttribute("user"); 
		
	%>
	<%
		if(userClass.equals("user"))
			out.print("用户: <span style = color:blue;>"+ ( (User)user).getName() +"</span>你好！&nbsp;&nbsp;<a href = myLibrary.jsp >主页</a>" ) ;
		else  out.print("管理员: <span style = color:blue;>"+ ( (Admin)user).getName() +"</span>你好！&nbsp;&nbsp;<a href = admin.jsp >主页</a>" ) ;
	%>
	&nbsp;&nbsp;&nbsp;&nbsp;<a href = "logout">退出</a>
</div>
</div>