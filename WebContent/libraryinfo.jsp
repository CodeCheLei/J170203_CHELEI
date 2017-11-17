<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<script src="/library2/js/jquery-3.2.1.min.js"></script>
	<body bgcolor="#ffffff">
	<div id="div1">
		<jsp:include page="top.jsp" />
		<ul style="list-style: none;" align="center">
			<li>图书馆名称:<input type="text" ></li><br/>
			<li>馆&nbsp;长:&nbsp;&nbsp;<input type="text"></li><br/>
			<li>联系电话:&nbsp;<input type="text"></li><br/>
			<li>联系地址:&nbsp;<input type="text"></li><br/>
			<li>E-mail:&nbsp;&nbsp;<input type="text"></li><br/>
			<li>图书馆网址:<input type="text"></li><br/>
			<li>建馆时间:&nbsp;<input type="text"></li><br/>
			<li>图书馆简介:<textarea rows="5" style="width: 168px;"></textarea></li><br/>
			<li><input type="button" value="保存">&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></li>
		</ul>
	</div>
	</body>
	<script type="text/javascript">
	
					var inps=document.getElementsByTagName("input");
					var tex=document.getElementsByTagName("textarea")
					inps[0].value="${sessionScope.library.libraryName}";
					inps[1].value="${sessionScope.library.curator}";
					inps[2].value="${sessionScope.library.tel}";
					inps[3].value="${sessionScope.library.address}";
					inps[4].value="${sessionScope.library.email}";
					inps[5].value="${sessionScope.library.url}";
					inps[6].value="${sessionScope.library.createDate}";
					tex[0].value="${sessionScope.library.introduce}";

	$("input:button").click(function(){
		var inps=document.getElementsByTagName("input");
		var tex=document.getElementsByTagName("textarea");
		var libraryName=inps[0].value;
		var curator=inps[1].value;
		var tel=inps[2].value;
		var address=inps[3].value;
		var email=inps[4].value;
		var url=inps[5].value;
		var createDate=inps[6].value;
		var introduce=tex[0].value;
		$.ajax(
				{
					"type":"post", 
					"url": "/library2/act3",  
					"data":{"libraryName":libraryName,"curator":curator,"tel":tel,
							"address":address,"email":email,"url":url,
							"createDate":createDate,"introduce":introduce
					},
					"success": function(data){
						alert("保存成功");
						location.href="act2";
					}
				}
				);
	})
	$("input:reset").click(function(){
		$("input:text").val("");
		$("textarea").val("");
	})
	</script>
</html>