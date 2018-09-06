<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<!--=============== Meta and Title  ===============-->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>${user.usernickname}的小世界</title>
	<!-- favicon icon -->			
	<link rel="icon" type="image/png" href="favicon.png"> 
	      <!--=============== css file  ===============-->	
	<link rel="stylesheet" href="css/animate.css" media="all" />            <!-- Animate css -->
	<link rel="stylesheet" href="css/font-awesome.min.css" media="all" />   <!-- Font awesome css -->
	<link rel="stylesheet" href="css/font-sourch_sun_pro.css"/>             <!-- Font css -->	
	<link rel="stylesheet" href="fonts/comicSans.css"/> 					<!-- Font css -->
	<link rel="stylesheet" href="css/slicknav.css"/>	 					<!-- Slicknav css -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>  					<!-- Bootstrap -->
	<link rel="stylesheet" href="css/owl.carousel.css">	   					<!-- carousel css -->
	<link rel="stylesheet" href="css/owl.theme.css">   						<!-- Owl theme css -->			
	<link rel="stylesheet" href="css/reset.css"/>						 	<!-- Recet css -->
	<link rel="stylesheet" href="switcher/switcher.css"/>					<!-- Switcher css -->				
	<link rel="stylesheet" href="css/style4.css"/>
	<link rel="stylesheet" href="css/responsive.css" media="all" />			<!-- Responsive css -->
	<link rel="stylesheet" href="css/preloder.css" media="all" />			<!-- Preloder css -->
	<style type="text/css">/* 去除浏览器输入框自动填充黄色 */
		input:-webkit-autofill {
		-webkit-box-shadow: 0 0 0px 1000px white inset;
		border: 1px solid #CCC!important;
		background-color: transparent;
		}
	</style>
</head>
<body>
	
		<!-- loader-wrapper -->		
		<div id="loader-wrapper">
			<div id="loader"></div>
			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
		</div>
		<!-- end loader-wrapper -->	
		<!-- canvas -->			
		<div id="canvas-holder">
			<canvas id="demo-canvas"></canvas>
		</div>
		<!--end canvas -->
		
		<div id="main">  <!--start main div -->

<div class="container navbar">   <!-- Under button -->
				<div class="row">
					<div class="col-sm-12 ">
						
						<div class="button_area" id="sticker"> <!-- sticker menu for mobile layout -->
							<ul id="nav">
								<li id="scrollbar" >
									<h3 class="btn_menu home btn  btn-lg">我的主页</h3>
									<h3 class="btn_menu services btn  btn-lg " >我的收藏</h3>	
									<h3 class="btn_menu team_member btn  btn-lg" >我的专题</h3>
									<h3 class="btn_menu about_us btn  btn-lg " >努力开发中</h3>			
									<h3 class="btn_menu contact_us btn  btn-lg" >我的信息</h3>
								</li>	
							</ul>	
						</div>
					</div>
				</div>
			</div> <!-- //Under button -->
<!--
##  选色器
=============================================================================== -->			

		<div id="custumize-style">
		  <a href="#" class="switcher open"> <span class="icon-switcher"><i class="fa fa-cogs"></i></span></a>
		  <div>
			<h3 class="color-option-title">选色</h3>
			<ul class="colors-style" id="custom-color">
			  <li><a href="#" class="blue"></a></li>
			  <li><a href="#" class="yellow"></a></li>
			  <li><a href="#" class="red"></a></li>
			  <li><a href="#" class="green"></a></li>
			  <li><a href="#" class="purple"></a></li>
			  <li><a href="#" class="pink"></a></li>
			  <li><a href="#" class="brown"></a></li>
			</ul>

		  </div>
		</div> <!-- Color Switcher Ends-->
				
<!--
## HOME area  个人主页
=============================================================================== -->	
			
			<div class="home_area"> <!-- Home area-->
				<div class="container">
					<div class="row" >
						<div class="col-sm-12">
							<div class="logo " style="padding-bottom: 50px;">
								<img src="${user.usericon}" width="180px;" height="180px;" style="border-radius: 90px;"/>
							</div>	
						</div>
					</div>
				</div>
				<div class="container" style="margin-top: 20px;">
					<div class="row">
						<div class="col-sm-12">
							<div class="home_area_text">
								<h2>${user.usernickname}的小世界</h2> <!-- 用户名 -->
								<br>
									<c:if test="${empty user.userdesc}">
									<span id="userdescspan" style="font-size: 20px;">
										这个人什么都没有说过！
									</span>
									<form id="mc-form" style="margin-top: 10px;">
										<input type="hidden" name="userid" id="userid" value="${user.userid }"/>
										<input class="email_input subscribe" id="userdesc" type="text" placeholder="添加你的个性签名">
										<button class="email_submit" type="submit" onclick="subuserdesc()">提交</button>
										<!-- <label style="display:block;padding:10px 0px; color:green;" for="mc-email">dada</label> -->
									</form>
									</c:if>
									<c:if test="${not empty user.userdesc}">
									<div class="container">
									<div class="row">
										<div class="col-sm-12">
											<div class="subscribe_area"> 
												<span id="userdescspan" style="font-size: 20px;">
													${user.userdesc}
												</span>
												<form id="mc-form" style="margin-top: 10px;">
													<input type="hidden" name="userid" id="userid" value="${user.userid}"/>
													<input class="email_input subscribe" id="userdesc" type="text" placeholder="修改你的个性签名">
													<button class="email_submit" type="submit" onclick="subuserdesc()">提交</button>
													<!-- <label style="display:block;padding:10px 0px; color:green;" for="mc-email">dada</label> -->
												</form>
											</div>
										</div>
									</div>
									</div>
									</c:if>
							</div>
						</div> 
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<!-- countdown -->
							<ul class="countdown wow fadeInUp" data-wow-duration="7s">
								<li>
									<span class="days">00</span>
									<p class="days_ref">day</p>
								</li>

								<li>
									<span class="hours">00</span>
									<p class="hours_ref">hours</p>
								</li>

								<li>
									<span class="minutes">00</span>
									<p class="minutes_ref">minutes</p>
								</li>

								<li>
									<span class="seconds">00</span>
									<p class="seconds_ref">seconds</p>
								</li>
							</ul>
							<!--End countdown -->
						</div>
					</div>
				</div>
				<h3 style="margin-bottom: 20px;">
					<a href="home" style="color: white;text-decoration: none;">
						回到主页
					</a>
					&emsp;
					<a href="exit" style="color: white;text-decoration: none;">
						退出
					</a>
				</h3>	
			</div>	<!-- //Home area-->
			
			<div style="clear:both;"></div>
			
<!--
## section1  收藏区域
=============================================================================== -->	
	
			<div class="section" id="section1"> <!-- section1 -->
				
				<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="servicer_area_text">
								<h2>收藏的应用</h2>			<!-- Page title -->
							</div>
						</div>
					</div>
				</div>
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div id="carousel_wrapper_worker">  <!-- Carouse slider -->
									<div class="carousel_item">
									   <div class="single_carousel" style="padding-top: 30px;">
											<i class="big_icon fa fa-mobile"></i>
											<p style="text-align: center;">appname1</p>
									   </div>
									</div>
								</div> <!-- //End Carouse slider -->
							</div>
						</div>
					</div>
				</div>
			</div>  <!-- // End section1 -->
			
			<div style="clear:both;"></div>	
			
<!--
## section2  我的专题
=============================================================================== -->	
	
			<div class="section" id="section2">	 <!-- Section2 -->
				
				<div class="content">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="team_area_text">
									<h2>我的专题</h2>		<!-- Page title -->
									<h4>We are coming soon</h4>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row">				
							<div class="col-sm-12">
								<div id="carousel_wrapper">   <!-- Carouse slider 2-->
									<div class="carousel_item">
									   <div class="single_carousel member_picture1">
											<div class="overlay"></div>
											<img class="pic_one" src="images/teamone.jpg" alt="" />
											<ul class="member_icon">
												<li><a href="#"><i class="facebook small_icon  fa fa-facebook"></i></a></li>	
												<li><a href="#"><i class="link small_icon  fa fa-link"></i></a></li>
												<li><a href="#"><i class="twitter small_icon  fa fa-twitter"></i></a></li>
												<li class="name_member" >JONE DOEY</li>
											</ul>											
									   </div>
									</div>
								</div>   <!-- // End Carouse slider 2 -->
							</div>
						</div>
					</div>
				</div>
			</div>  <!-- //End Section2 -->
			
			<div style="clear:both;"></div>			

<!--
## section3   待开发 
=============================================================================== -->	
		
			<div class="section" id="section3">	<!-- Section3 -->
				
				<div class="content">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="about_us_text">
									<h2>正在开发中</h2>				<!-- Page title -->
									<h4>We are coming soon</h4>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<p class="about_us_p" >程序员正在开发中。。。</p>
							</div>
						</div>
					</div>
				</div>
			</div> <!-- //End Section3 -->
			
			<div style="clear:both;"></div>	
			
<!--
## section4  Coutact us area
=============================================================================== -->				
			
			<div class="section" id="section4"> <!-- Section4 -->

				<div class="content">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="contact_us_text">
									<h2>个人信息</h2>			<!-- Page title -->
									<h4>
									<c:if test="${user.useridentity==0}">
										<span>普通会员</span>
									</c:if>
									<c:if test="${user.useridentity==1}">
										<span>基础用户</span>
									</c:if>
									<c:if test="${user.useridentity==2}">
										<span>专题主</span>
									</c:if>
									</h4>	
									<h5 class="map_social">
									<c:if test="${user.useridentity==0}">
										←点击左边箭头完善基础信息<br>									
										&nbsp;&nbsp;&nbsp;
										点击右边箭头成为专题主→
									</c:if>
									<c:if test="${user.useridentity==1}">
										←点击左边箭头可以修改基础信息<br>									
										&nbsp;&nbsp;&nbsp;
										点击右边箭头成为专题主→
									</c:if>
									<c:if test="${user.useridentity==2}">
										←点击左边箭头可以修改基础信息<br>									
										&nbsp;&nbsp;&nbsp;
										点击右边箭头修改主题主信息→
									</c:if>
									</h5>
									<br>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-sm-4 map_area">   <!-- Google Map area -->
								<div style="margin-top: -200px;">
								<i class="map_show fa fa-angle-down" ></i>
								<i class="map_corse1 fa fa-times" ></i>
								</div>
								<div class="map_hide" style="margin-top: 20px;">
									<c:if test="${user.useridentity==0}">
									<h4 class="map_social">完善基础信息</h4>   <!-- 完善基础信息 -->
									</c:if>
									<c:if test="${user.useridentity!=0}">
									<h4 class="map_social">修改基础信息</h4>   <!-- 修改基础信息 -->
									</c:if>
									<form id="baseinfo-form" method="post"><!--  method="post" name="send" -->
										<input type="hidden" name="userid" id="userid" value="${user.userid }"/>
										<input type="hidden" name="useridentity" id="useridentity" value="${user.useridentity}"/>	
										<input class="email_input requiredField name" id="userphone" name="userphone" type="text" placeholder="请输入您的电话" >
										<p style="font-weight: bold;">
											&emsp;&emsp;&emsp;&emsp;
											<input id="sex1" type="radio" value="男"  name="usersex" checked="checked" hidden="hidden"/>
											<label for="sex1">大魔王</label>
											&emsp;&emsp;
											<input id="sex2" type="radio" value="女"  name="usersex" hidden="hidden"/>
											<label for="sex2">小仙女</label>
										</p>
										<input class="email_input requiredField email" id="userbirthday" name="userbirthday" type="date" placeholder="生日"><br />
										
										<input id="subUserBaseInfo" class="email_submit email_margin_top submit" type="button" value="确认提交"/>
									</form>
								</div>
							</div>    <!-- // End Google Map area -->
							
							<div class="col-sm-4">
								<!-- form section -->	
								<div id="form-wrapper" style="text-align: left;padding-left: 50px;">

									<p>邮箱：${user.useremail}</p>
									<br>
									<p>电话：${user.userphone}</p>
									<br>
									<p>类别：
									<c:if test="${user.usersex=='男'}">
										大魔王
									</c:if>
									<c:if test="${user.usersex=='女'}">
										小仙女
									</c:if>
									</p>
									<br>
									<p>生日：
										<fmt:formatDate value="${user.userbirthday}" pattern="yyyy-MM-dd"/>
									</p>
									<br>
									<p>注册时间：
										<fmt:formatDate value="${user.userregisttime}" pattern="yyyy-MM-dd"/>
									</p>
									<br>
									<p>QQ：${user.userqq}</p>
				
								</div>	
								<!-- end form section -->	
							</div>		
							<div class="col-sm-4 social_hide">     <!-- Phone and Social icon area -->
								<div style="margin-top: -200px;">
								<i class="show_social fa fa-angle-down"></i>
								<i class="map_corse2 fa fa-times"></i>
								</div>
								<div class="hide_social" style="margin-top: 20px;">
									<c:if test="${user.useridentity!=2}">
									<h4 class="map_social">专题主信息完善</h4>
									<form id="subjectinfo-form" method="post" name="send">	
										<input type="hidden" name="userid" id="userid" value="${user.userid }"/>
										<input class="email_input requiredField name" id="usertruename" name="usertruename" type="text" placeholder="真实姓名" >
										<input class="email_input requiredField email" id="useraddress" name="useraddress" type="text" placeholder="地址"><br />
										<input class="email_input requiredField subject" id="useridentitycard" name="useridentitycard" type="text" placeholder="身份证号" >
										<input id="updateUserSubjectInfo" class="email_submit email_margin_top submit" type="button" value="确认提交"/>
									</form>
									</c:if>
									<c:if test="${user.useridentity==2}">
									<h4 class="map_social">专题主信息修改</h4>
									<form id="subjectinfo-form" method="post" name="send">
										<input type="hidden" name="userid" id="userid" value="${user.userid }"/>	
										<input class="email_input requiredField name" id="usertruename" name="usertruename" type="text" placeholder="${user.usertruename}" >
										<input class="email_input requiredField email" id="useraddress" name="useraddress" type="text" placeholder="${user.useraddress}"><br />
										<input class="email_input requiredField subject" id="useridentitycard" name="useridentitycard" type="text" placeholder="${user.useridentitycard }" >
										<input id="updateUserSubjectInfo" class="email_submit email_margin_top submit" type="button" value="确认提交"/>
									</form>
									</c:if>
									<h4 class="map_social">我的其他账号</h4>
									<div class="social_icon">
										<ul>
											<li style="border-radius: 25px;background-color: white;">
												<a class="" href="#"><img src="images/icon/qq.png" width="50px;" height="50px;"></a>
											</li>				
											<li style="border-radius: 25px;background-color: white;">
												<a class="" href="#"><img src="images/icon/wechat.png"  width="50px;" height="50px;"></a>
											</li>
											<li style="border-radius: 25px;background-color: white;">
												<a class="" href="#"><img src="images/icon/weibo.png"  width="50px;" height="50px;"></a>
											</li>
										</ul>
									</div>
								</div>
							</div>   <!-- //End Phone and Social icon area -->
						</div>
					</div>
				</div>
			</div>  <!-- //End Section4 -->
			
			
			<div style="clear:both;"></div>	
<!--
##  Under button_area // Mainmenu area 
=============================================================================== -->				
			
			
		</div>  <!-- //End main div  -->

		
<!--
##  javascript All file include
=============================================================================== -->			
		
		<script src="js/jquery-1.9.1.min.js"></script>	              	<!-- Main js file -->
		<script src="js/custom.js"></script>						   	<!-- Custom js file -->	
		<!-- <script src="js/form-contact.js"></script> -->				<!-- form-contact js file -->
		<script src="js/jquery.slicknav.min.js"></script>				<!-- Slicknav js file -->
		<script src="js/bootstrap.min.js"></script>						<!-- Bootstrap js file -->
		<script src="js/owl.carousel.min.js"></script>					<!-- Carousel js file -->
		<script src="js/canvas.js"></script>     						<!-- canvas js file -->  	
		<!-- <script src="js/jquery.ajaxchimp.min.js"></script> -->				<!-- Ajaxchimp js file -->
		<script src="switcher/switcher.js"></script>					<!-- Switcher js file -->
		
		<script src="js/userinfo.js"></script>
		
		<script>
					
		$(document).ready(function (){
			$("input[type='radio']").first().next().css('color','#649723');		//设置默认选项的文字为选中状态
			$(":radio").click(function (){
				$("input[type='radio']").each(function(){
				if(this.checked){
					$(this).next().css('color','#649723');
				}else{
					$(this).next().css('color','#767676');
				}
			});
		 
			});
		});
		/* 用户基础信息 */
		$("#subUserBaseInfo").click(function () {
			var userphone=$('#userphone').val();
			var usersex=$(":radio[name='usersex']:checked").val();
			var userbirthday=$('#userbirthday').val();
			var userid=$('#userid').val();
			var useridentity=$('#useridentity').val();
			$.ajax({
				type:'POST',
				dataType:'json',
				url:'updateUserBaseInfo',
				data:{
					'userid':userid,
					'usersex':usersex,
					'userphone':userphone,
					'userbirthday':userbirthday,
					'useridentity':useridentity
					},
				success:function(data){
					alert(data.data);
				}
			});
			return false;
		});
		/* 专题主信息 */
		$("#updateUserSubjectInfo").click(function () {
			var userid=$('#userid').val();
			var usertruename=$('#usertruename').val();
			var useraddress=$("#useraddress").val();
			var useridentitycard=$('#useridentitycard').val();
			$.ajax({
				type:'POST',
				dataType:'json',
				url:'updateUserSubjectInfo',
				data:{
					'userid':userid,
					'usertruename':usertruename,
					'useraddress':useraddress,
					'useridentitycard':useridentitycard
					},
				success:function(data){
					alert(data.data);
				}
			});
			return false;
		});

		</script>
</body>
</html>