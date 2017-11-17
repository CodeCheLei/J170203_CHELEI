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
                <h4 id="title" class="modal-title"\>添加图书信息</h4>
            </div>
            <div class="modal-body">  	
            	<div id="content" style="font-size:20px;border:1px solid #ccc;height:250px">
            	条形码&nbsp;&nbsp;&nbsp;&nbsp;:<input id="newt" type="text"></input><br/>
            	图书名称:<input id="newn" type="text"></input><br/>
            	图书类型:<select name="select" id="newl">
            					<c:forEach items="${sessionScope.list1 }" var="li">
						    		<option value="${li.typename }">${li.typename }</option>
								</c:forEach>
					    </select><br/>
            	出版社&nbsp;&nbsp;&nbsp;&nbsp;:<select name="select" id="newc" >
            										<c:forEach items="${sessionScope.list2 }" var="li">
												    		<option value="${li.pubname }">${li.pubname }</option>
													</c:forEach>
											    </select><br/>
            	书架&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:<select name="select" id="news">
												            			<c:forEach items="${sessionScope.list3 }" var="li">
																		   	<option value="${li.name }">${li.name }</option>
																		</c:forEach>
																	 </select><br/>
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
				<td width="20%" height="10"></td>
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
					<td width="20%" height="29" align="center">
						<font size="2">图书名称</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">图书类型</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">出版社</font>
					</td>
					<td width="12%" height="29" align="center">
						<font size="2">书架</font>
					</td>
				<td width="20%" height="29" align="center">
					<font size="2">操作</font>
				</td>
			</tr>
			
			<c:forEach items="${sessionScope.list }" var="li">
				<tr class="tr1" align="center">
					<td width="12%" height="29" align="left">
						<font size="2">${li.barcode }</font>
					</td>
					<td width="20%" height="29" align="left">
						<font size="2">${li.bookname }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.type }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.publishing }</font>
					</td>
					<td width="12%" height="29" align="left">
						<font size="2">${li.bookcase }</font>
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
})
$(".upda").click(function(){
	flg="2";
	var pas=$(this).parent().parent();
	$("#newt").val(pas.children().children().get(0).innerHTML);
	$("#newn").val(pas.children().children().get(1).innerHTML);
	clearch();
	$("option[value='"+pas.children().children().get(2).innerHTML+"']").attr("selected",true);
	$("option[value='"+pas.children().children().get(3).innerHTML+"']").attr("selected",true);
	$("option[value='"+pas.children().children().get(4).innerHTML+"']").attr("selected",true);
	mbarcode=$("#newt").val();
});


$("#save").click(function(){
	var barcode=$("#newt").val();
	var bookname=$("#newn").val();
	var type=$("#newl").val();
	var publishing=$("#newc").val();
	var bookcase=$("#news").val();
	console.log(barcode);
	$.ajax(
			{
				"type":"post", 
				"url": "/library/UpdateBookinfo",  
				"data":{"flg":flg,"barcode":barcode,"bookname":bookname,
						"type":type,"publishing":publishing,
						"bookcase":bookcase,"mbarcode":mbarcode
				},
				"success": function(data){
					location.href="Bookinfo";
				}
			}
			);
	flg="1";
});

$(".dela").click(function(){
	var barcode= $(this).attr("tip");
	$.ajax(
			{
				"type":"post", 
				"url": "/library/DelBook",  
				"data":{"barcode":barcode},
				"success": function(data){
					location.href="Bookinfo";
				}
			}
			);
});
function clearch(){
	$("option").attr("selected",false);
};
</script>
</html>