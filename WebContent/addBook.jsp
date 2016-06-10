<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, org.book.*"%>
    <%@ page errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="
    height: 80%;
">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书录入</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<style type="text/css">
	body{
		text-align: center;
	}
	.head{
		width:90%;
		height:5%;
		padding:10px;
		border-radius: 30%;
		margin:0 auto;
		background-color:rgba(241, 152, 120, 0.68);
		text-align: center;
	}
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

	.input{
		width: 25%;
    	display: list-item;
    	border-radius: 6px;
	    background-color: #A4B9A4;
	    margin: 2% 1% 2% 2%;
	    padding: 2%;
	}
	.scan{
		width: 65%;
	    display: list-item;
	    border-radius: 6px;
	    background-color: #A4B9A4;
	    margin: 2% 2% 2% 1%;
	    padding: 2%;
	}
	.scan th, .scan td{
		border: 1px;
		border-color: black;
		border-style: solid;
	}
	.scan table{
		width:95%;
		margin:0 auto;
	}
	.btn a{
		text-decoration: none;
	}
	.input input{
		background-color: #EFE5E5;
	}
	.btn{
		width: 80px;
		background-color: ##DA8787;
		border-radius: 3px;
		padding: 3px;
		text-decoration: none;
		font-weight:bold;
	}
	.btn:hover{
		background-color: red;
	}
</style>
</head>
<body>
<jsp:include page = "loginContent.jsp" />
<div class  = "head"><h1>图书录入</h1></div>
<div class = "content">
	<div class="input">
	<form action = "addBook.jsp" method="post">
		<table>
			<tr>
				<td><span>isbn</span></td>
				<td><input type="text" name="isbn" value = "" minlength = 13 maxlength = 13></td>
			</tr>
			<tr>
				<td><span>书名</span></td>
				<td><input type="text" name="name" value = ""></td>
			</tr>
			<tr>
				<td><span>出版社</span></td>
				<td><input type="text" name="publicer" value = ""></td>
			</tr>
			<tr>
				<td><span>作者</span></td>
				<td><input type="text" name="author" value = ""></td>
			</tr>
			<tr>
				<td><span>出版时间</span></td>
				<td><input type="text" name="publicTime" value = ""></td>
			</tr>
			<tr>
				<td><span>价格</span></td>
				<td><input type="text" name="price" value = ""></td>
			</tr>
			<tr>
				<td><span>数量</span></td>
				<td><input type="text" name="amount" value = ""></td>
			</tr>
			<tr><td colspan="2"><input class = "btn" type = "submit" name="submit" value = "添加>>" ></td></tr>
		</table>
	</form>
	</div>
	<div class="scan">
		<table>
			<tr>
				<th><span>isbn</span></th>
				<th><span>书名</span></th>
				<th><span>出版社</span></th>
				<th><span>作者</span></th>
				<th><span>出版时间</span></th>
				<th><span>价格</span></th>
				<th><span>数量</span></th>
			</tr>
			<%
				request.setCharacterEncoding("utf-8");
				LinkedList<Book> list;
				if(session.getAttribute("list") != null)
				{
					list = ((LinkedList<Book>)(session.getAttribute("list")));
					
					//debug
					//System.out.println("get " + list);
				}
				else
				{
					
					list = new LinkedList<Book>();
					
					//debug
					//System.out.println("new " + list);
				}
				
				String isbn = (request.getParameter("isbn") == null ? "" : request.getParameter("isbn"));
				String name = (request.getParameter("name") == null ? "" : request.getParameter("name"));
				String publicer = (request.getParameter("publicer") == null ? "" : request.getParameter("publicer"));
				String author = (request.getParameter("author") == null ? "" : request.getParameter("author"));
				String publicTime = (request.getParameter("publicTime") == null ? "" : request.getParameter("publicTime"));
				String price = (request.getParameter("price") == null ? "" : request.getParameter("price"));
				String amount = (request.getParameter("amount") == null ? "" : request.getParameter("amount"));
				
				//debug
				//System.out.println("isbn:" +isbn + name);
				//System.out.println(request.getParameter("isbn"));
				
				
				if(isbn.length() == 13 && name.length() >0)
				{
					amount = String.valueOf(Integer.parseInt(amount));
					price = String.valueOf(Double.parseDouble(price));
					
					Book b = new Book();
					b.setIsbn(isbn);
					b.setName(name);
					b.setPublicer(publicer);
					b.setPublicTime(publicTime);
					b.setAuthor(author);
					b.setAmount(amount);
					b.setLefts(amount);
					b.setPrice(price);
					list.add(b);
					
					session.setAttribute("list", list);
				}
				else
				{
					
				}
				Iterator it = list.iterator();
				String str = "";
				while( it.hasNext())
				{
					Book b = (Book)(it.next());
					str += "<tr><td>" + b.getIsbn() + "</td><td>" + b.getName() + "</td><td>" + b.getPublicer()
						+ "</td><td>" +b.getAuthor() + "</td><td>" + b.getPublicTime() + "</td><td>" 
						+ b.getPrice() + "</td><td>" + b.getAmount() +"</td></tr>";
						
					//debug
					//System.out.println(str);
				}
				out.print(str);
			%>
			<tr><td style = "border:0px;">&nbsp;</td></tr>
			<tr><td colspan = "7" style ="border-style:none;"><span class = "btn"><a href = "addBook" >录入</a></span></td></tr>
		</table>
		<div class = "mess" >
		<%
			if(request.getParameter("mess") != null)
				out.print( (String)(session.getAttribute("mess") == null  ?  "" : session.getAttribute("mess") ) );
		%></div>
	</div>
</div>
</body>
</html>