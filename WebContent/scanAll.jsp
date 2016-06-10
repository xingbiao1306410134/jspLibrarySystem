<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "org.book.*,java.sql.ResultSet"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>浏览图书</title>
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
	<h1 class = "headcss">浏览所有图书</h1>
	<div class = "content">
	<table>
		<tr>
			<th><span>isbn</span></th>
			<th><span>书名</span></th>
			<th><span>出版社</span></th>
			<th><span>作者</span></th>
			<th><span>出版时间</span></th>
			<th><span>价格</span></th>
			<th><span>数量</span></th>
			<th><span>剩余</span></th>
		</tr>
		<%
		
			int count = 5;
			int index = 0;
			String str = "";
			if(session.getAttribute("count") != null)
			{
				count = (int )session.getAttribute("count") ;
			}
			if(session.getAttribute("index") != null)
			{
				index = (int )session.getAttribute("index") ;
			}
			String com = "select * from books limit " + index + "," + count;
			//debug
			System.out.println(com);
			
			MysqlConn stmt = new MysqlConn(com,0);
			ResultSet rs = stmt.getRs();
			while(rs != null && rs.next())
			{
				str += "<tr><td>" + rs.getString("isbn") + "</td><td>" +
						rs.getString("name") + "</td><td>" +
						rs.getString("public") + "</td><td>" +
						rs.getString("author") + "</td><td>" +
						rs.getString("publicTime") + "</td><td>" +
						rs.getString("price") + "</td><td>" +
						rs.getString("amount") + "</td><td>" +
						rs.getString("lefts") + "</td></tr>";
			}
			
			out.print(str);
			stmt.destroy();
		
		%>
		<tr><td colspan = "8"><form action = "" method = post>
		<input type = "submit" name = "add" value = "    更     多     " style = "margin-left:50%; wdith 50px">
		<%
		
			if(request.getParameter("add") != null && request.getParameter("add") == "    更     多     ");
			{
				count = count + 5;
				session.setAttribute("count", count);
			}
		%>
	
	</form></td>
	</tr>
	</table>
	</div>
</body>
</html>