<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<link href="css/bootstrap.min.css" rel="stylesheet" />
		<script src="/library2/js/jquery-3.2.1.js"></script>
		<script src="/library2/js/bootstrap.min.js"></script>
	</head>
	<body bgcolor="#ffffff">
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 id="title" class="modal-title"\>添加书架</h4>
            </div>
            <div class="modal-body">  	
            	<div id="content" style="font-size:20px;border:1px solid #ccc;height:100px">新增书架名：<input id="newbookcase" type="text"></input></div>
            </div>
            <div class="modal-footer">
             	<button id="save" type="button" class="btn btn-default" data-dismiss="modal">保存</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>               
            </div>
        	</div><!-- /.modal-content -->
		 </div><!-- /.modal -->
	</div>
	
	<div id="div1">
		<jsp:include page="top.jsp" />
		<table width="99%" height="117"  align="center"
			cellpadding="0" cellspacing="0" bgcolor="#fff">
			<tr class="tr">
				<td width="786" colspan="9" style="padding: 5px;">
					
					<p align="center" id="p">
						
				</td>
			</tr>
			<tr align="right">
				<td width="80%" height="10"></td>
				<td width="20%" height="10" align="center">
					<a id="add" href="#" class="detail" data-toggle="modal" data-target="#myModal"><font size="2" color="blue">添加书架</font></a>
				</td>
			</tr>
			<tr class="tr1">
				<td width="80%" height="29" align="left">
					<font size="2">书架名称</font>
				</td>
				<td width="20%" height="29" align="center">
					<font size="2">删除</font>
				</td>
			</tr>
			
			<c:forEach items="${sessionScope.list }" var="li">
				<tr class="tr1" align="center">
					<td width="80%" height="29" align="left">
						<font size="2">${li.name }</font>
					</td>
					<td width="20%" height="29" align="center">
						<a class="dela" href="#" tip="${li.id }"><font size="2" color="blue">删除</font></a>
					</td>
				</tr>
			</c:forEach>
		</table>
			<br/>
			<br/>
			<br/>
		</div>
	</body>
<script type="text/javascript">
	$("#save").click(function(){
		var names=$("#newbookcase").val();
		$.ajax(
				{
					"type":"post", 
					"url": "/library2/act7",  
					"data":{"names":names},
					"success": function(data){
						location.href="act6";
					}
				}
				);
	});
	
	$(".dela").click(function(){
		var id= $(this).attr("tip");
		$.ajax(
				{
					"type":"post", 
					"url": "/library2/act8",  
					"data":{"id":id},
					"success": function(data){
						location.href="act6";
					}
				}
				);
	})
</script>
</html>