<%@ page language="java"
	import="java.util.List,com.oralce.web.bean.User"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改界面</title>
</head>
<body background="imgs/3.jpg">
	
	<form action='Userservlet?action=updateUser&id=${u.id}' method='post'>

		<caption align=center color=red>
			<h1 align="center">修改用户界面</h1>
		</caption>
		<hr color=red></hr>
		<table align=center height=500px width=1000px border=1>
			
			<input type='hidden' name='id' value='${u.id }%>' />
			<!--  <input type='hidden' name='stuNo' value='${u.id }' />-->
			<tr align='center'>
				<td>姓名</td>
				<td><input type='text' name='name' value='${u.name}' /></td>
			</tr>


			<tr align='center'>
				<td>手机号</td>
				<td><input type='text' name='phone' value='${u.phone }' /></td>
			</tr>

			<tr align='center'>
				<td>用户名：</td>
				<td><input type='text' name='userName'
					value='${u.userName }' /></td>
			</tr>

			<tr align='center'>
				<td>密码</td>
				<td><input type='text' name='password'
					value='${u.password }' /></td>
			</tr>
             <tr align='center'>
				<td>注册时间</td>
				<td><input type='text' name='zhucetime'
					value='${u.zhucetime }' /></td>
			</tr>
			<tr>
				<td align='center' colspan='2'><input type='submit' value='修改' /><a
					href='Userservlet?action=showUserByPage'>取消</a></td>
			</tr>
			</table>		
	  </form>

</body>
</html>