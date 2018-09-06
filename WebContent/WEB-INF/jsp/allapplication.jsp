<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全部应用</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all"/>
<style type="text/css">
	h3 a{
		color: black;
		text-decoration: none;
		padding: 0 10px 0 10px;
			
	}
	h3 a:hover{
		text-decoration: none;
		color: black;
		background-color: #00B3FF;
		border-left: dashed;
		border-right: dashed;
	}
	.appframe{
		border: 5px solid black; 
		width:190px; 
		height:190px;
		border-radius: 40px;
	}
	.appframe img{
		border-radius: 40px;
		margin-top: 5px;
	}
</style>
<script src="js/jquery.min.js"> </script>
<!--web_fonts-->
<!-- <link href='http://fonts.useso.com/css?family=Abril+Fatface' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Vollkorn:400italic,700italic,400,700' rel='stylesheet' type='text/css'> -->
<!--/web_fonts-->
</head>
<body>
<!--header-->

<div id="home" class="banner">
	<div class="container">
		<div class="label-1"> </div>
		<div class="top-menu">
		<span class="menu"> </span> 
			<ul class="nav">
					<li><a href="home">主页</a></li>
					<c:if test="${listappcategory[0].appcategoryone=='应用'}">
					<li><a href="toAllApplication?currentPage=1&appcategoryone=游戏">游戏</a></li>
					</c:if>
					<c:if test="${listappcategory[0].appcategoryone=='游戏'}">
					<li><a href="toAllApplication?currentPage=1&appcategoryone=应用">应用</a></li>
					</c:if>
					<c:if test="${empty user}">
						<li><a href="toLogin">登录</a></li>
						<li><a href="toRegist">注册</a></li>
					</c:if>
					<c:if test="${not empty user }">
						<li><a href="toUserInfo?userid=${user.userid}">${user.usernickname}的小世界</a></li>
					</c:if>
				</ul>
				<div class="logo">
					<a href="home"><img src="images/logo1.png" /></a>
				</div>
				<div class="clearfix"> </div>
		</div>	
			 <!-- script-for-menu -->
			 <script>
					$("span.menu").click(function(){
						$(".top-menu ul").slideToggle("slow" , function(){
						});
					});
			 </script>
			 <!-- script-for-menu -->	
			<div id="banner-top" class="banner-top">		  		  
				<h1>
					<span class="left-icon"></span>
					Funny&nbsp;Cheer
					<span class="right-icon"></span>
					<div class="clearfix"></div>
				</h1>
				<h2>
					<span class="left-icon"></span>
					有趣的灵魂200多斤
					<span class="right-icon"></span>
					<div class="clearfix"></div>
				</h2>
			</div>
			<!-- 分类的超链接 -->
			<div class="header-icons">
				<div class="label-4">
					<h3 style="line-height: normal;">
						<c:forEach items="${listappcategory}" var="listappcategory">
							<a href="toCategoryList?currentPage=1&appcategoryone=${listappcategory.appcategoryone}&appcategoryid=${listappcategory.appcategoryid}">${listappcategory.appcategoryname}</a>
						</c:forEach>
					</h3>
				<div class="label-4"></div>
				</div>
			</div>
	</div>
</div>
<!--/header-->
<!--全部应用-->
<div id="work" class="work">
	<div class="container">
		<div class="label-3"> </div>
		<div class="label-4"> </div>
		<h3>
			<span class="left-icon"> </span>
			应用
			<span class="right-icon"> </span>
			<div class="clearfix"></div>
		</h3>
		<p>全部应用</p>
		<!--Portfolio-->
		<div class="project">
			<div id="portfoliolist">
			<c:forEach items="${pageBean.list}" var="listapp">
				<div class="portfolio" style="display: inline-block; opacity: 1;">
					<div class="portfolio-wrapper">		
						<a class="b-link-stripe b-animate-go" href="toSingleApp?appid=${listapp.appid}">
							<div class="appframe">
								<img src="${listapp.appicon}" width="170px;" height="170px;"/>
							</div>
							<div class="b-wrapper" style="border-radius: 40px;">
								<h2 class="b-animate b-from-left    b-delay03 ">
									<div style="margin-top: -50px;">
									${listapp.appname }
									<img src="images/logo1.png" />
									${listapp.appsynopsis}
									<p>去下载</p>
									</div>
								</h2>
							</div>
						</a>
			        </div>
				</div>	
				</c:forEach>
				<div class="clearfix"> </div>
				<div style="margin-top: 50px;">
					<h4>这是第${pageBean.currentPage}页，总共${pageBean.totalPage}页</h4><br>
					<a href="toAllApplication?currentPage=1&appcategoryone=${listappcategory[0].appcategoryone}">
						<button class="btn btn-primary">首页</button>
					</a>
					<a href="toAllApplication?currentPage=${pageBean.prePage}&appcategoryone=${listappcategory[0].appcategoryone}">
						<button class="btn btn-info">上一页</button>
					</a>
					<c:forEach begin="${pageBean.startPage}" end="${pageBean.endPage}" var="pagenum">
						<a href="toAllApplication?currentPage=${pagenum}&appcategoryone=${listappcategory[0].appcategoryone}">
							<button class="btn btn-danger">${pagenum}</button>
						</a>
					</c:forEach>
					<a href="toAllApplication?currentPage=${pageBean.nextPage}&appcategoryone=${listappcategory[0].appcategoryone}">
						<button class="btn btn-info">下一页</button>
					</a>
					<a href="toAllApplication?currentPage=${pageBean.totalPage}&appcategoryone=${listappcategory[0].appcategoryone}">
						<button class="btn btn-primary">尾页</button>
					</a>
				</div>	
			</div>
		</div>
	</div>
</div>
<!--/全部应用-->


</body>
</html>
<script type="text/javascript">

</script>