<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#d1{
		height:243px;
		width:603px;
		background-image: url("img/bg.gif");
	}
	#d2{
		height:143px;
		width:303px;
		margin-left: 300px;
	}
</style>
</head>
<body>
<div id="d1">
	<div id="d2">
		<form name="form1" action="${pageContext.request.contextPath }/act1" method="post">
				<table width="250" height="143" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td height="100">
							&nbsp;
						</td>
					</tr>
					<tr>
						<td height="38" align="center">
							用户名:
							<input type="text" name="name" size="10" maxlength="20"><br/>
							密&nbsp;码:
							<input type="password" name="password" size="12" maxlength="20">
						</td>
					</tr>
					<tr>
						<td height="33" align="center" valign="top">
							&nbsp;&nbsp;
							<input type="submit" value="登录" name="login" >
							<input type="reset" value="重置" name="back">
						</td>
					</tr>
				</table>
			</form>
	</div>
</div>
</body>
<script type="text/javascript">
	
</script>
</html>