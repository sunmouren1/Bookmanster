<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body  background="imgs/3.jpg">
 <center>
  <form>
   <table width="350px" height="200px" align="center" border="1px" bordercolor="silver" cellspacing="0";>
    <caption align="top"><h1><font color="red">修改图书</font></h1><hr size="2px" color="red" width="600px"/></caption>
     <tr align="center"><td>请选择分类:</td><td><select><option value="name">计算机</option><option value="name">哲学</option><option value="name">java入门</option></select></td></tr>
     <tr align="center"><td>图&nbsp;书&nbsp;名&nbsp;称:</td><td><input type="text" value=""></td></tr>
     <tr align="center"><td>图&nbsp;书&nbsp;价&nbsp;格:</td><td><input type="text" value=""></td></tr>
     <tr align="center"><td>出&nbsp;&nbsp;&nbsp;版&nbsp;&nbsp;&nbsp;社:</td><td><input type="text" value=""></td></tr>
     <tr align="center"><td>状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态:</td><td><input type="radio" name="zt"/>未借出<input type="radio" name="zt"/>借出</td></tr>
     <tr align="center"><td>借&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;人:</td><td><input type="text" value=" "></td></tr>
     <tr align="center"><td colspan="2"><input type="submit"value="修改">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"value="重置"></td></tr>
    </table>
   </form>
  </center>
  </body>
</html>