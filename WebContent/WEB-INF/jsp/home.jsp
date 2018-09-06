<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="FunnyCheer ">
    <meta name="author" content="">
    <title>FunnyCheer欢趣</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Google Web Font -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
   <!--  <link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>	 -->
    <!-- Custom CSS-->
    <link href="css/general.css" rel="stylesheet">	
	 <!-- Owl-Carousel -->
    <link href="css/custom.css" rel="stylesheet">
	<link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
	<link href="css/style1.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">	
	<!-- Magnific Popup core CSS file -->
	<link rel="stylesheet" href="css/magnific-popup.css"> 	
	<script src="js/modernizr-2.6.2.min.js"></script>  <!-- Modernizr /-->
	<script src="js/PIE_IE9.js"></script>  
	<script src="js/PIE_IE678.js"></script>
	<style type="text/css">
		input:-webkit-autofill {
			-webkit-box-shadow: 0 0 0px 1000px white inset;
			border: 1px solid #CCC!important;
			background-color: transparent;
		}
		.header_search{
			float:left;
			margin:-45px 0 0 150px;
		}
		.header_search input{
			border-radius: 10px;
			width: 250px;
			border-color: #00BFFF; 
			background-color: transparent;
			text-align: center;
		}
		 #searchBox ul{
		    background-color: transparent;
		}
		#searchBox ul li {
		    width: 230px;
		    height: 30px;
		   	background-color: transparent;
		    font-size: 15px; 
		    color: #000000;
		    line-height:50px; 
		}
		#searchBox ul li a{
		    text-decoration: none;
		    color: #000000;
		}
		#searchBox ul li a span{
			margin-left: 50px;
		}
		#searchBox ul li a:hover{
		    text-decoration: none;
		    color: red;
		} 
		#searchBox img {
			width: 30px;
			height: 30px;
			margin-left: -30px; 
		}
	</style>  
</head>

<body id="home">
	<!-- 加载器 -->
	<div id="preloader">
		<div id="status"></div>
	</div>
	
	<!-- FullScreen -->
    <div class="intro-header">
		<div class="col-xs-12 text-center abcen1">
			<h1 class="h1_home wow fadeIn" data-wow-delay="0.4s">Funny&nbsp;Cheer</h1>
			<h3 class="h3_home wow fadeIn" data-wow-delay="0.6s">找寻你所想的欢笑与乐趣</h3>
			<ul class="list-inline intro-social-buttons">
				<c:if test="${ empty user}">
					<li>
						<a href="${pageContext.request.contextPath}/toLogin" class="btn btn-lg mybutton_cyano wow fadeIn" data-wow-delay="0.8s">
							<span class="network-name">登录</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/toRegist" class="btn btn-lg mybutton_standard wow swing wow fadeIn" data-wow-delay="1.2s">
							<span class="network-name">注册</span>
						</a>
					</li>
				</c:if>
				<c:if test="${not empty user}">
					<li>
						<c:if test="${user.usersex=='男'}">
							<p>大魔王${user.usernickname}驾到</p>
						</c:if>
						<c:if test="${user.usersex=='女'}">
							<p>小仙女${user.usernickname}降临</p>
						</c:if>
					</li>
				</c:if>
			</ul>
		</div>    
        <!-- /.container -->
		<div class="col-xs-12 text-center abcen wow fadeIn">
			<div class="button_down "> 
				<a class="imgcircle wow bounceInUp" data-wow-duration="1.5s"  href="#category"> 
					<img class="img_scroll" src="images/icon/circle.png"> 
				</a>
			</div>
		</div>
    </div>
	
	<!-- 固定置顶栏-->
	<nav class="navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a style="float: left; margin:20px 0 0 -90px;" href="#">
					FunnyCheer
				</a>
				<a class="navbar-brand" href="#home">
					<img style="transform: rotate(-45deg); width: 55px; height: 55px; margin-top: -15px;" src="images/icon/airplane.svg"/>
				</a>
				<!-- 搜索框 -->
				<div class="header_search">
					<input type="text" name="keyword" id="keyword" class="search" placeholder="找寻你的欢乐" />
　　					<div id="searchBox" style="position: absolute;"></div>
				</div>
			</div>
			
			<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
				<ul class="nav navbar-nav" style="margin-right: -100px;">
					<c:if test="${not empty user}">
						<li class="menuItem"><a href="toUserInfo?userid=${user.userid}">${user.usernickname }的小世界</a></li>
						<li class="menuItem"><a href="exit">退出</a></li>
					</c:if>
					<li class="menuItem"><a href="toAllApplication?appcategoryone=应用">应用</a></li>
					<li class="menuItem"><a href="toAllApplication?appcategoryone=游戏">游戏</a></li>
					<li class="menuItem"><a href="#">社区</a></li>
					<li class="menuItem"><a href="#">专题</a></li>
					<li class="menuItem"><a href="#">周边商城</a></li>
					<li class="menuItem"><a href="#">联系我们</a></li>
				</ul>
			</div>
		</div>
	</nav> 
	
	<!-- 分类 -->
	<div id="category" class="content-section-a">
		<div class="container">
			<div class="row">
			
			<div class="col-md-6 col-md-offset-3 text-center wrap_title">
				<h2>Are You Ready?</h2>
				<p class="lead" style="margin-top:0">Come on</p>
			</div>
			 
				<div class="col-sm-6  block wow bounceIn">
					<div class="row">
						<div class="col-md-4 box-icon1 rotate"> 
							<a href="#">
							<span>
								<img src="images/A.png" width="100px;" height="100px;"style="margin-top: -20px;"/>
							</span>
							</a>
						</div>
						<div class="col-md-8 box-ct">
							<a href="toAllApplication?appcategoryone=应用"><h3> 应用分类 </h3></a>
							<p> 徜徉在有趣的海洋中</p>
						</div>
					</div>
			  	</div>
				<div class="col-sm-6 block wow bounceIn">
					<div class="row" >
					 	<div class="col-md-8 box-ct"  style="text-align: right;">
							<a href="toAllApplication?appcategoryone=游戏"><h3>游戏分类</h3></a>
							<p> 翱翔在活力的蓝天上</p> 
					 	</div>
					  	<div class="col-md-4 box-icon2 rotate"style="float: right;"> 
							<a href="#">
							<span>
								<img src="images/G.png" width="100px;" height="100px;"style="margin-top: -20px;"/>
							</span>	
							</a>
					 	</div>
					</div>
				</div>
		  </div>
		</div>
	</div>
	
	<!-- 热门榜根据下载量排 -->
	<!-- 热门应用 -->
	<div id="hot_application" class="content-section-b" style="border-top: 0">
		<div class="container">
			<div class="col-md-8 col-md-offset-2 text-center wrap_title" >
				<h2>热门应用</h2>
				<p class="lead" style="margin-top:0">还没用过就out了，快去下载吧</p>
				
			</div>
			<div class="row" >
				<c:forEach items="${listapp}" var="listapp" >
					<div class="col-sm-3 wow fadeInDown text-center" >
					  <a href="toSingleApp?currentPage=1&appid=${listapp.appid}">
					  	<img class="rotate" src="${listapp.appicon}" width="100px;" height="100px;">
					  	<h4>${listapp.appname}</h4>
					  </a>
					  <div class="lead" style="text-align: left;">
					  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					  	${listapp.appsynopsis}
					  </div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- 热门游戏 -->
	<div id="hot_game" class="content-section-b" style="border-top: 0">
		<div class="container">
			<div class="col-md-8 col-md-offset-2 text-center wrap_title" >
				<h2>热门游戏</h2>
				<p class="lead" style="margin-top:0">身边的小伙伴都在玩，一起疯狂吧</p>
				
			</div>
			<div class="row" >
				<c:forEach items="${listgame}" var="listgame" >
					<div class="col-sm-3 wow fadeInDown text-center">
						<a href="toSingleApp?appid=${listgame.appid}&currentPage=1">
						  <img class="rotate" src="${listgame.appicon}" width="100px;" height="100px;">
						  <h4>${listgame.appname}</h4>
						</a>
						<div class="lead" style="text-align: left;">
						  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  ${listgame.appsynopsis}
						</div>
					</div>
				</c:forEach>
			</div>
			
		</div>
	</div>
	
	<!-- 热门话题轮播 -->
	<div id="screen" class="content-section-b" >
        <div class="container">
          	<div class="row" >
				<div class="col-md-6 col-md-offset-3 text-center wrap_title ">
					<h2>热门话题</h2>
					<p class="lead" style="margin-top:0">时下最新话题，领你走进新世界</p>
			 	</div>
		 	</div>
		  
		    <div class="row wow bounceInUp">
              	<div id="owl-demo" class="owl-carousel">
					<a href="#">
						<div class="item" style="width: 240px; height: 426px; " >
							<img  class="img-responsive img-rounded"  src="images/slide/1.png" >
						</div>
					</a>
              	</div>
          	</div>
        </div>
	</div>
	
	
<div class="morph-button" style="display: none;">
	<form><button/></form>
</div>
<script src="js/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(function () {
	$('#keyword').keyup(function() {
	var inputText = $.trim(this.value);
	if (inputText!=""&&inputText!=null) {
		$.ajax({
			type:'POST',
			url:'test',
			cache:false,//不从浏览器缓存中加载
			data:{
				'data':inputText
				},
			dataType:'json', 
			success:function(data){
				/* alert(data[0].appid);  */
				if(data.length!=0){ 
					 var lists="<ul>";
					$.each(data,function(){
						lists+="<li><a href='toSingleApp?appid="+this.appid+"'>"
								+"<img src='"+this.appicon+"'>"
								+"<span>"+this.appname+"</span>"+"</a></li>";
					});
					lists+="</ul>"; 
					 /* 将结果显示 */
					 $("#searchBox").html(lists).show(); 
				 }else { 
					 $("#searchBox").hide();
				 }  
			}
		});
	}else {
		$("#searchBox").hide();
	}
});
})
$("#keyword").blur(function() {
	$("#searchBox").slideUp("slow");
})
	
</script>
<!-- JavaScript -->

<script src="js/bootstrap.js"></script><!--图片从左向右或从右向左滑动-->
<script src="js/owl.carousel.js"></script><!--轮播图-->
<script src="js/script.js"></script>
<!-- StikyMenu -->
<script src="js/stickUp.min.js"></script>
<script type="text/javascript">
  jQuery(function($) {
	$(document).ready( function() {
	  $('.navbar-default').stickUp();
	  
	});
  });

</script>
<!-- Smoothscroll -->
<script type="text/javascript" src="js/jquery.corner.js"></script> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<script src="js/classie.js"></script>
<script src="js/uiMorphingButton_inflow.js"></script>
<!-- Magnific Popup core JS file -->
<script src="js/jquery.magnific-popup.js"></script> 
</body>
</html>