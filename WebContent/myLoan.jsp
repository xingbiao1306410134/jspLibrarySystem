<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "org.book.*,java.sql.ResultSet"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的借阅</title>
<style type="text/css">
	.content{
		padding: 10px;
	    width: 90%;
	    margin: 30px;
	    display: inline-flex;
	    height: 90%;
	    border-radius: 6px;
	    background-color: rgba(239, 156, 156, 0.47);
	    text-align: center;
	    list-style-type: none;
	}
	
	.content table{
		width:80%;
		margin:0 auto;
	}


</style>
<link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>
	<jsp:include page = "./loginContent.jsp" />
	<h1 style = "width: 80%;text-align:center;margin:0 auto;">我的借阅</h1>
	<div class = "content">
	<table>
		<tr>
			<th><span>借阅号</span></th>
			<th><span>书籍isbn</span></th>
			<th><span>书籍名称</span></th>
			<th><span>借阅时间</span></th>
			<th><span>是否归还</span></th>
			<th><span>续借次数</span></th>
		</tr>
		<%
		
			int myxjcount = 5;
			int myindex = 0;
			String str = "";
			String userId = ((User) (session.getAttribute("user") )) .getId(); 
			if(session.getAttribute("myxjcount") != null)
			{
				myxjcount = (int )session.getAttribute("myxjcount") ;
			}
			if(session.getAttribute("myindex") != null)
			{
				myindex = (int )session.getAttribute("myindex") ;
			}
			String com = "select * from loan,books where books.isbn = loan.bookIsbn and loan.userId = " + userId + " limit " + myindex + "," + myxjcount;
			//debug
			System.out.println(com);
			
			MysqlConn stmt = new MysqlConn(com,0);
			ResultSet rs = stmt.getRs();
			while(rs != null && rs.next())
			{
				str += "<tr><td>" + rs.getString("id") + "</td><td>" +
						rs.getString("isbn") + "</td><td>" +
						rs.getString("name") + "</td><td>" +
						rs.getString("time") + "</td><td>" +
						rs.getString("Revert") + "</td><td>" +
						rs.getString("renew") + "</td></tr>";
			}
			
			out.print(str);
			stmt.destroy();
		
		%>
		<tr><td colspan = "6"></td></tr>
		<tr><td colspan = "6"><form action = "" method = post>
		<input type = "submit" name = "add" value = "    更     多     " style = "margin-left:50%; wdith 50px">
		<%
		
			if(request.getParameter("add") != null && request.getParameter("add") == "    更     多     ");
			{
				myxjcount = myxjcount + 5;
				session.setAttribute("myxjcount", myxjcount);
			}
		%>
	
	</form></td>
	</tr>
	</table>
	</div>
</body>
</html>