<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="FunnyCheer ">
    <meta name="author" content="">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>注册</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/user.js"></script>
</head>
<body> 
<h1>即将前往</h1>
	<!-- 账号不可注册的提示 -->
	<div id="msg" style="color: white;">
		${registFail}
	</div>
	<div class="container w3layouts agileits">
		<div class="login w3layouts agileits">
			<a href="home"><img src="images/registpic.jpg" /></a>
		</div>

		<div class="register w3layouts agileits">
			<h2>注 册</h2>
			
			<form action="doRegist" method="post">
				<input type="text" name="usernickname" id="usernickname" placeholder="给自己取一个funny的名字吧" >
				<input type="text" name="username" id="username_regist" placeholder="账号" >
				<input type="password" id="password" name="password" placeholder="密码" >
				<input type="password" id="checkpassword" name="checkpassword" placeholder="再次输入密码" >
				<input type="text" name="useremail" id="useremail" placeholder="邮箱" >
				<div class="send-button w3layouts agileits">
						<input type="submit" value="确认注册">
				</div>
			</form>
			<div style="color: white;">
				<a href="${pageContext.request.contextPath}/toLogin">已有账号,快马加鞭的去登录</a>
			</div>
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>
	<div class="footer w3layouts agileits">
		<p>Copyright &copy; 获取更多乐趣请前往 
			<a href="home" >funnycheer欢趣娱乐</a>
		</p>
	</div>
<script type="text/javascript">
	
</script>
</body>
</html>