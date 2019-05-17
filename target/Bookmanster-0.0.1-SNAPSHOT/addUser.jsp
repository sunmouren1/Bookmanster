<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>添加用户</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 引入核心css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

<link rel="stylesheet" href="bootstrap/css/bootstrapValidator.css">

<script type="text/javascript" src="bootstrap/js/jquery.js"></script>

<script type="text/javascript" src="bootstrap/js/jquery.js"></script>

<script type="text/javascript" src="bootstrap/js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
$(function() {
	$("#login").bootstrapValidator({

		feedbackIcons : {
			valid : "glyphicon glyphicon-ok",
			invalid : "glyphicon glyphicon-remove",
			validating : "glyphicon glyphicon-refresh"
		},
		fields : {
			name : {
				validators : {
					notEmpty : {
						message : '姓名不能为空'
					},
					regexp : {
						regexp : /^[\u0391-\uFFE5]{2,10}$/,
						message : '姓名必须是2~10个汉字'
					},
				}
			},
			 phone:{
				  validators:{
					  notEmpty:{
						  message:'手机号不能为空'
					  },
					  regexp:{
						  regexp:/^1[3-9][0-9]{9}$/,
					    message:'手机号不合法'
					  },
				  }
			  },
			  userName:{
				  validators:{
					  notEmpty:{
						  message:'用户名不能为空'
					  },
					  regexp:{
						  regexp:/^[A-Za-z_\.]{6,12}$/,
					    message:'用户名必须是6~12位字母或下划线'
					  },
				  }
			  },
			password:{
				  validators:{
					  notEmpty:{
						  message:'密码不能为空'
					  },
					  regexp:{
						  regexp:/^[A-Za-z_\.0-9]{6,}$/,
						    message:'密码至少六位数'
						  },
					  different:{
						  field:'userName',
						 message:'密码不能和用户名一样'
					  }
					  
				  }
			  },
			  repassword:{
				  validators:{
					  notEmpty:{
						  message:'确认密码不能为空'
					  },
					  identical:{
						  field:'password',
							  message:'两次密码不一致'
					  }
					  
				  }
			  },
			 

			
			
			  zhucetime: {
				validators : {
					notEmpty : {
						message : '注册时间不能为空'
					},
					regexp : {
						regexp : /^([1][7-9][0-9][0-9]|[2][0][0-9][0-9])(\-)([0][1-9]|[1][0-2])(\-)([0-2][1-9]|[3][0-1])$/g,
						message : '注册时间必须是当天'
					},
				}
			},
			
		}

	})

});
/*
function ValiDatename(){
	var name=document.addUser.name;
		var reg=/^[\u0391-\uFFE5]{2,10}$/;
		var nameMsg=document.getElementById("nameMsg");
		if(reg.test(name.value)){
			nameMsg.style.color="green";
			nameMsg.innerHTML="姓名合法";
		
			return true;
		}else{
			nameMsg.style.color="red";
			nameMsg.innerHTML="姓名必须2-10位汉字";
			return false;
		}
	
}
	function ValiDatephone(){
		var phone=document.addUser.phone;
		
			var reg=/^1[3-9][0-9]{9}$/;
			var phoneMsg=document.getElementById("phoneMsg");
			if(reg.test(phone.value)){
				phoneMsg.style.color="green";
				phoneMsg.innerHTML="手机号合法";
			
				return true;
			}else{
				phoneMsg.style.color="red";
				phoneMsg.innerHTML="手机号不合法";
				return false;
			}
	}
	 function ValiDateUserName(){
	    	var username=document.addUser.userName;
	    		var reg=/^\w{3,15}$/;
	    		var usernameMsg=document.getElementById("usernameMsg");
	    		if(reg.test(username.value)){
	    			usernameMsg.style.color="green";
	    			usernameMsg.innerHTML="用户名合法";
	    		
	    			return true;
	    		}else{
	    			usernameMsg.style.color="red";
	    			usernameMsg.innerHTML="用户名不合法";
	    			return false;
	    		}
	    }
	 function ValiDatepassword(){
		 	var password=document.addUser.password;
		 		var reg=/^(\w|\W){6,15}$/;
		 		var passwordMsg=document.getElementById("passwordMsg");
		 		if(reg.test(password.value)){
		 			passwordMsg.style.color="green";
		 			passwordMsg.innerHTML="密码合法";
		 		
		 			return true;
		 		}else{
		 			passwordMsg.style.color="red";
		 			passwordMsg.innerHTML="密码至少六位数";
		 			return false;
		 		}
		 }
	 function ValiDateurepassword(){
		 var password=document.addUser.password;
		 	var repassword=document.addUser.repassword;
		 	var repasswordMsg=document.getElementById("repasswordMsg");
		 	if(repassword.value==password.value){
		 		repasswordMsg.style.color="green";
		 		repasswordMsg.innerHTML="密码一致";
		 		return true;
		 	}else{
		 		repasswordMsg.style.color="red";
		 		repasswordMsg.innerHTML="两次密码不一致";
		 		return false;
		 	}
		 }
	 function ValiDatetime(){
	    	var zhucetime=document.addUser.zhucetime;
	    		var reg=/^([1][7-9][0-9][0-9]|[2][0][0-9][0-9])(\-)([0][1-9]|[1][0-2])(\-)([0-2][1-9]|[3][0-1])$/g;
	    		var zhucetimeMsg=document.getElementById("zhucetimeMsg");
	    		if(reg.test(zhucetime.value)){
	    			zhucetimeMsg.style.color="green";
	    			zhucetimeMsg.innerHTML="注册时间合法";
	    			return true;
	    		}else{
	    			zhucetimeMsg.style.color="red";
	    			zhucetimeMsg.innerHTML="注册时间必须符合日期格式";
	    			return false;
	    		}
	    }
	function jiaoyan() {
		return ValiDatename()&&ValiDatephone()&&ValiDateUserName()&&ValiDatepassword()&&ValiDateurepassword()&&ValiDatetime();
	}*/
	</script>
</head>
<body background="imgs/3.jpg">
  <div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form id="login" action="Userservlet?action=AddUser" method="post">
					<h3 class="text-center text-success">添加用户</h3>
					<div class="form-group">
						<label>姓&nbsp;&nbsp;名&nbsp;:</label> <input type="text"
							name="name" class="form-control" />
					</div>
					<div class="form-group">
						<label>手&nbsp;机&nbsp;号&nbsp;码:</label> <input type="text"
							name="phone" class="form-control" />
					</div>
					<div class="form-group">
						<label>用&nbsp;&nbsp;&nbsp;户&nbsp;&nbsp;&nbsp;名:</label> <input
							type="text" name="userName" class="form-control" />
					</div>
                    <div class="form-group">
						<label>密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;</label> <input
							type="text" name="password" class="form-control" />
					</div>
					  <div class="form-group">
						<label>确&nbsp;&nbsp;认&nbsp;&nbsp;密&nbsp;&nbsp;码</label> <input
							type="text" name="repassword" class="form-control" />
					</div>
					<div class="form-group">
						<label>注&nbsp;&nbsp;册&nbsp;时&nbsp;&nbsp;&nbsp;间:</label> <input
							type="date" name="zhucetime" class="form-control" />
					</div>
					
					<div class="form-group">
						<button type="submit" class="btn btn-success btn-block">添加</button>
						<button type="reset" class="btn btn-success btn-block">重填</button>
					</div>
				</form>

			</div>


		</div>

	</div>
	 <!-- - <form action="Userservlet?action=AddUser"method="post" name="addUser" enctype="application/x-www-form-urlencoded" onsubmit="return jiaoyan()">
		<table align="center" width="100px" height="300px" border="1px"
			cellspacing="0" bordercolor="silver">
			<caption align="top">
				<h1>
					<font color="red">添加用户</font>
				</h1>
				<hr size="2px" color="red" width="600px" />
			</caption>
			<tr align="center">
				<td>姓名:</td>
				<td><input type="text" name="name" onblur="ValiDatename()"/></td>
					<td width="100px"><span id="nameMsg"></span></td>
			</tr>
			<tr align="center">
				<td>手机号码:</td>
				<td><input type="text" name="phone"onblur="ValiDatephone()"/></td>
				<td width="100px"><span id="phoneMsg"></span></td>
			</tr>
			<tr align="center">
				<td>用&nbsp;&nbsp;户&nbsp;&nbsp;名:</td>
				<td><input type="text" name="userName" onblur="ValiDateUserName()"/></td>
				<td width="100px"><span id="usernameMsg"></span></td>
			</tr>
			<tr align="center">
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
				<td><input type="text" name="password" onblur="ValiDatepassword()"/></td>
				<td width="100px"><span id="passwordMsg"></span></td>
			</tr>
			<tr>
				<td align="center"><font color="black"><b>确认密码:</b></font></td>
					<td align="center"><input type="password"  name="repassword"  onblur="ValiDateurepassword()"/></td>
					<td width="100px"><span id="repasswordMsg"></span></td>
				</tr>
			<tr align="center">
				<td>注册时间:</td>
				<td><input type="text" name="zhucetime" onblur="ValiDatetime()"/></td>
				<td width="100px"><span id="zhucetimeMsg"></span></td>
			</tr>
			<!--   <tr>
			   <td align="center"><font color="black"><b>头像:</b></font></td>
					<td><input type="file"  name="touxiang" /></td>
			</tr>
			
			<tr align="center">
				<td colspan="2"><input type="submit" value="添加用户" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="reset" value="重新填写" /></td>
			</tr>
		</table>
	</form>
	-->
</body>
</html>