<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	align="center">
	<tr>
		<td  height="117"  colspan="9" background="img/banner.gif" style="background-repeat: no-repeat;">
			&nbsp;
		</td>
	</tr>
	<tr id="toptr">
		<td width="225" height="31"  align="center">
			<font color="#FFFFFF">2011年12月18日&nbsp;&nbsp;星期日</font>
		</td>
		<td  height="31" align="center"
			>
			<a href="#"><font color="#FFFFFF" class="font">首页</font>
			</a>
		</td>
		<td  align="center" class="drop-down"  >
			<a href="#" ><font color="#FFFFFF" class="font">系统设置</font>
				<ul class="drop-down-content" style="list-style: none">
	                <li><a href="${pageContext.request.contextPath }/act2">图书馆信息设置</a></li>
	                <li><a href="${pageContext.request.contextPath }/manager">管理员设置</a></li>
	                <li><a href="${pageContext.request.contextPath }/parameter.jsp">参数设置</a></li>
	                <li><a href="${pageContext.request.contextPath }/act6">书架设置</a></li>
	            </ul>
			</a>
		</td>
		<td  align="center" class="drop-down">
			<a href="#"><font
				color="#FFFFFF" class="font">读者管理</font>
				<ul class="drop-down-content" style="list-style: none">
	                <li><a href="${pageContext.request.contextPath }/act9">读者类型管理</a></li>
	                <li><a href="${pageContext.request.contextPath }/act12">读者档案管理</a></li>
	            </ul>
			</a>
		</td>
		<td   align="center" >
			<a href="${pageContext.request.contextPath }/Bookinfo" class="font"><font color="#FFFFFF">图书档案管理</font>
			</a>
		</td>
		<td   align="center" >
			<a href="#"><font color="#FFFFFF" class="font">图书借还</font>
			</a>
		</td>
		<td   align="center" >
			<a href="#"><font color="#FFFFFF" class="font">系统查询</font>
			</a>
		</td>
		<td   align="center" >
			<a href="#"><font
				color="#FFFFFF" class="font">更改口令</font>
			</a>
		</td>
		<td   align="center" >
			<a href="#"><font
				color="#FFFFFF">注销</font>
			</a>
		</td>
		
	</tr>
</table>