<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error.jsp"%>
<%@page import = "java.util.*,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>浏览图书</title>
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link rel="stylesheet" href="css/scanBook.css" type="text/css" />
</head>
<body>
<jsp:include page = "loginContent.jsp" />
<div class="header">

</div>
<div class="content">
	<div class="head">
		<div class="total">
			&nbsp;&nbsp;&nbsp;今天是：<span id="labTimeYear" style="color:Red;">
			<%
				Date date = new Date();
				SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
				out.print(df.format(date));
			%></span>
			&nbsp;&nbsp;&nbsp;<span id="labDay" style="color:#3366FF;"><%
				df.applyLocalizedPattern("EEEE");
				out.print(df.format(date));
			%></span>
		</div>
		<div class="ctrl">  
			天气: <span id="LabCity" style="color:Red;"></span>
			<a id="changeCity">[切换]</a>
			<span id="LabInfo">undefined</span>&nbsp;
			<span id="LabTmpe" style="color:#3366FF;">undefined</span>
		</div>
	</div>
	<div style = "display: inline-flex;width:100%;">
		<div class="side"> 
			<div style="margin-left:15px;">
				<ul class="sidesort">
					<li><a href="">我要续借</a></li>
					<li><a href="">我的借阅</a></li>
					<li><a href="">我的书架</a></li>
					<li><a href="">修改密码</a></li>
				</ul>
			</div>
			<p> &nbsp;&nbsp;</p><h4>&gt;&gt;&gt;温馨提示:</h4>
			<div style="margin:5px">
				<p>&nbsp;&nbsp;&nbsp;1.读者进入我的图书馆以后，<br>可以进行图书续借，预约，预借。<br></p>
			</div>
			<div style="margin:5px">
				<p>&nbsp;&nbsp;&nbsp;2.修改读者密码和基本资料。<br></p>
			</div>
			<p>&nbsp;&nbsp;&nbsp;3.查看我的评论，我的书架，<br>我的预约，我的借阅权限，等相<br>关操作。</p>
			<p>&nbsp;&nbsp;&nbsp;4.可以进行图书推荐，等相关<br>操作。</p>
		</div>

		<div class="searchBox">
		<form action = "search" method = POST>
			<div>
				<p>检索条件：<br>
				<table style = "margin: 0 auto;">
				<tr><td><span>书名：</span></td><td><input name="bookName" type="text" id="txtKeyWord" class="serachinfo" /><br></td></tr>
				<tr><td><span>作者：</span></td><td><input name="bookAuthor" type="text" id="txtKeyWord" class="serachinfo" /><br></td></tr>
				<tr><td><span>出版社：</span></td><td><input name="txtKeyWord" type="text" id="bookPublic" class="serachinfo" /><br></td></tr>
				</table>
				<input type="submit" name="submit" value="检  索" id="Button1" class="submit" />
				</p>
			</div>
			<div>
			<p>
				<span>文献类型:</span>
				&nbsp;&nbsp;<input id="RbntAll" type="radio" name="tabletype" value="RbntAll" checked="checked" />
				<label for="RbntAll">全部文献</label>
				&nbsp;&nbsp; <input id="RbntBook" type="radio" name="tabletype" value="RbntBook" />
				<label for="RbntBook">查询图书</label>
				&nbsp;&nbsp;<input id="RbntSerise" type="radio" name="tabletype" value="RbntSerise" />
				<label for="RbntSerise">查询期刊</label>
			</p>
			</div>
			<div>
				<p>
				<span>每页显示</span>
				<select name="DropDownListPageNum" id="DropDownListPageNum" class="serachinfo" style="width:120px;">
					<option selected="selected" value="10">10</option>
					<option value="20">20</option>
					<option value="50">50</option>
				</select>
				</p>
			</div>
			<div>
				<p>
				<span>排序选项</span>
				<select name="DropDownListMatchType" id="DropDownListMatchType" class="serachinfo" style="width:120px;">
					<option value="">匹配度</option>
					<option value="pubyear">出版日期</option>
					<option value="callno">索书号</option>
					<option value="publish">出版社</option>
				</select>
	  			</p>
			</div>
			<div>
				<p>
				<span>排序方式</span>
				<select name="DropDownList2" id="DropDownList2" class="serachinfo" style="width:120px;">
					<option value="desc">降序排列</option>
					<option selected="selected" value="asc">升序排列</option>
				</select>
	  			</p>
			</div>
			<div>
				<p>&nbsp;&nbsp;&nbsp;</p>
				<h4>&gt;&gt;&gt;温馨提示:</h4>
				<p>&nbsp;&nbsp;&nbsp;1.系统默认的检索条件为任意词检索，每页显示10条记录<br></p>
				<p>&nbsp;&nbsp;&nbsp;2.多个检索词联合查询，以空格隔开，如"红楼梦 下"</p>
				<p>&nbsp;&nbsp;&nbsp;3.在得到的检索结果中可以缩小检索范围</p>
			</div>
		</form>
		</div>
	</div>
</div>
</body>
</html>