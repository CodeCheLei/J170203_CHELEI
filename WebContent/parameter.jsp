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
			<li>办证费&nbsp;:<input type="text" >(元)</li><br/>
			<li>有效期限:<input type="text">(月)</li><br/>		
			<li><input type="button" value="保存">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消"></li>
		</ul>
		<br/>
		<br/>
	</div>
	</body>
	<script type="text/javascript">
	$.ajax(
			{
				"type":"get", 
				"url": "/library2/act4",   
				"success": function(data){
					var inps=document.getElementsByTagName("input");
					var json = JSON.parse(data);
					inps[0].value=json.cost;
					inps[1].value=json.validity;
				}
			}
			);
	$("input:button").click(function(){
		var inps=document.getElementsByTagName("input");
		var cost=inps[0].value;
		var validity=inps[1].value;
		$.ajax(
				{
					"type":"post", 
					"url": "/library2/act5",  
					"data":{"validity":validity,"cost":cost	},
					"success": function(data){
						alert("保存成功");
						
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