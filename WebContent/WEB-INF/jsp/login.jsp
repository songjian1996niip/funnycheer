<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/user.js"></script>
<title>登录</title>
</head>
<body>
	<h1>正在进入次元</h1>
	<!-- 账号不存在的提示 -->
	<div id="msg" style="color: white;">
		${msg1}<!-- 密码错误提示 -->
		${msg2}<!-- 不可登录提示 -->
	</div>
	<div class="container w3layouts agileits" style="padding-bottom: 550px;">

		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			
			<form action="doLogin" method="post">
				<input type="text" name="username" id="username_login" placeholder="账号" >
				<input type="password" name="password" placeholder="密码" >
				<!-- <input type="text" name="checkcode" placeholder="验证码" > -->
				<%-- <img src="${pageContext.request.contextPath}/images/QQ.png" width="200px;"height="60px;"/> --%>
				<ul class="tick w3layouts agileits">
					<li>
						<input type="checkbox" id="brand1" value="">
						<label for="brand1"><span></span>记住我</label>
					</li>
				</ul>
				<div class="send-button w3layouts agileits">
						<input type="submit" value="登 录">
				</div>	
			</form>
			
			<span>
				<a href="#">忘记密码?</a>
			</span>
			<span style="float: right; color: white;">
				<a href="${pageContext.request.contextPath}/toRegist">没有账号?前往注册</a>
			</span>
			<div class="social-icons w3layouts agileits">
				<p>- 其他方式登录 -</p>
				<ul>
					<li class="qq"><a href="#">
					<span class="icons w3layouts agileits"></span>
					<span class="text w3layouts agileits">QQ</span></a></li>
					<li class="weixin w3ls"><a href="#">
					<span class="icons w3layouts"></span>
					<span class="text w3layouts agileits">微信</span></a></li>
					<li class="weibo aits"><a href="#">
					<span class="icons agileits"></span>
					<span class="text w3layouts agileits">微博</span></a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="register w3layouts agileits">
			<a href="home"><img src="images/loginpic.jpg"/></a>
		</div>
	</div>
	<div class="footer w3layouts agileits">
		<p>Copyright &copy; 获取更多乐趣请前往 
			<a href="home">funnycheer欢趣娱乐</a>
		</p>
	</div>
</body>
</html>