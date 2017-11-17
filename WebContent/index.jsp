<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			#p{
			background-image: url("img/main_booksort.gif");
			width:100%;
			height:44px;
			}
			
			.tr1 td{
				border:1px solid #72AACC;
			}
			
			#div1{
				width:776px;
				margin:0 auto;
				background-color:#fff;
			}
			
		</style>
	</head>
	<body bgcolor="#ffffff">
	<div id="div1">
		<jsp:include page="top.jsp" />
		<table width="99%" height="117"  align="center"
			cellpadding="0" cellspacing="0" bgcolor="#fff">
			<tr class="tr">
				<td width="786" colspan="9" style="padding: 5px;">
					
					<p align="center" id="p">
						
				</td>
			</tr>
			<tr class="tr1">
				<td width="5%" height="29" align="center">
					<font size="2">排名</font>
				</td>
				<td width="15%" height="29" align="center">
					<font size="2">图书条码</font>
				</td>
				<td width="15%" height="29" align="center">
					<font size="2">图书名称</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">图书类型</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">书架</font>
				</td>
				<td width="15%" height="29" align="center">
					<font size="2">出版社</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">作者</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">定价（元）</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">借阅次数</font>
				</td>
			</tr>
			<c:forEach begin="1" end="8" varStatus="index">
			<tr class="tr1">
				<td width="5%" height="29" align="center">
					<font size="2">${index.count }</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">12345678</font>
				</td>
				<td width="20%" height="29" align="center">
					<font size="2">aaaaaaaa</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">bbbbbbbbbb</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">ccccccccc</font>
				</td>
				<td width="15%" height="29" align="center">
					<font size="2">大连理工大学出版社</font>
				</td>
				<td width="10%" height="29" align="center">
					<font size="2">eeeeeeeeeee</font>
				</td>
				<td width="7%" height="29" align="center">
					<font size="2">99.99</font>
				</td>
				<td width="8%" height="29" align="center">
					<font size="2">5</font>
				</td>

			</tr>
			</c:forEach>
			
		</table>
		</div>
	</body>
</html>