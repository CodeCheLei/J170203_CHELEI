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
                <h4 id="title" class="modal-title"\>添加读者信息</h4>
            </div>
            <div class="modal-body">  	
            	<div id="content" style="font-size:20px;border:1px solid #ccc;height:250px">
            	条形码&nbsp;&nbsp;&nbsp;&nbsp;:<input id="newt" type="text"></input><br/>
            	姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input id="newn" type="text"></input><br/>
            	读者类型:<input id="newd" type="text"></input><br/>
            	证件类型:<input id="newz" type="text"></input><br/>
            	证件号码:<input id="newh" type="text"></input><br/>
            	电话&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<input id="newe" type="text"></input><br/>
            	E-mail&nbsp;&nbsp;&nbsp;:<input id="newm" type="text"></input><br/>
            	</div>
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
				<td width="12%" height="10"></td>
				<td width="12%" height="10"></td>
				<td width="12%" height="10"></td>
				<td width="12%" height="10"></td>
				<td width="12%" height="10"></td>
				<td width="12%" height="10"></td>
				<td width="12%" height="10"></td>
				<td width="20%" height="10" align="center">
					<a id="add" href="#" class="detail" data-toggle="modal" data-target="#myModal"><font size="2" color="blue">添加读者信息</font></a>
				</td>
			</tr>
			<tr class="tr1">
				<td width="12%" height="29" align="left">
						<font size="2">条形码</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">姓名</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">读者类型</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">证件类型</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">证件号码</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">电话</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">E-mail</font>
					</td>
				<td width="20%" height="29" align="center">
					<font size="2">操作</font>
				</td>
			</tr>
			
			<c:forEach items="${sessionScope.list }" var="li">
				<tr class="tr1" align="center">
					<td width="12%" height="29" align="left">
						<font size="2">${li.barcode}</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.names }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.typeid.names }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.paperType }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.paperNo }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.tel }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.email }</font>
					</td>
					<td width="20%" height="29" align="center">
						<a class="upda"  data-toggle="modal" data-target="#myModal"  href="#" tip="${li.barcode }"><font size="2" color="blue">修改</font></a>
						<a class="dela" href="#" tip="${li.barcode }"><font size="2" color="blue">删除</font></a>
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
	var flg="1";
	var mbarcode;
	$("#add").click(function(){
		$("#newt").val("");
		$("#newn").val("");
		$("#newd").val("");
		$("#newz").val("");
		$("#newh").val("");
		$("#newe").val("");
		$("#newm").val("");
	})
	$(".upda").click(function(){
		flg="2";
		console.log(flg);
		var pas=$(this).parent().parent();
		$("#newt").val(pas.children().children().get(0).innerHTML);
		$("#newn").val(pas.children().children().get(1).innerHTML);
		$("#newd").val(pas.children().children().get(2).innerHTML);
		$("#newz").val(pas.children().children().get(3).innerHTML);
		$("#newh").val(pas.children().children().get(4).innerHTML);
		$("#newe").val(pas.children().children().get(5).innerHTML);
		$("#newm").val(pas.children().children().get(6).innerHTML);
		mbarcode=$("#newt").val();
	});
	
	
	$("#save").click(function(){
		console.log(flg);
		var barcode=$("#newt").val();
		var names=$("#newn").val();
		var vocation=$("#newd").val();
		var paperType=$("#newz").val();
		var paperNo=$("#newh").val();
		var tel=$("#newe").val();
		var email=$("#newm").val();
		$.ajax(
				{
					"type":"post", 
					"url": "/library2/act13",  
					"data":{"flg":flg,"barcode":barcode,"names":names,
							"vocation":vocation,"paperType":paperType,
							"paperNo":paperNo,"tel":tel,"email":email,
							"mbarcode":mbarcode
					},
					"success": function(data){
						location.href="act12";
					}
				}
				);
		flg="1";
	});
	
	$(".dela").click(function(){
		var barcode= $(this).attr("tip");
		console.log(barcode);
		$.ajax(
				{
					"type":"post", 
					"url": "/library2/act14",  
					"data":{"barcode":barcode},
					"success": function(data){
						location.href="act12";
					}
				}
				);
	});
</script>
</html>