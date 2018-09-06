<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
  <meta name="description" content="Responsive Bootstrap HTML Mobile Application Template - Free Download">
<title>${application.appname}</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
  <link rel="stylesheet" href="assets/bootstrap-material-design-font/css/material.css">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/et-line-font-plugin/style.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/animate.css/animate.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
</head>
<body>
				
<div id="menu-0" custom-code="true">
<section>
	<!--固定栏-->
    <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
        <div class="container">
            <div class="mbr-table">
                <div class="mbr-table-cell">
                	<a class="navbar-caption" href="#menu-0">
                		<img src="images/icon/airplane.svg" style="transform: rotate(-45deg); width: 55px; height: 55px; margin-top: 0px;">
                	</a>
                	&nbsp;&nbsp;&nbsp;&nbsp;
                  <a class="navbar-caption" href="home">主页</a>
                </div>
                <div class="mbr-table-cell">
                    <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
   					  
   					  
   					  	<li class="nav-item dropdown open">
							<a class="nav-link link dropdown-toggle mbr-editable-menu-item" href="index.html#pricing-table2-f" data-toggle="dropdown-submenu" aria-expanded="true">应用详情</a>
							<div class="dropdown-menu">
						 	  <span class="dropdown-item mbr-editable-menu-item">大小：${application.appsize}M</span>
						 	  <span class="dropdown-item mbr-editable-menu-item">版本：${application.appversion}</span>
						 	  <span class="dropdown-item mbr-editable-menu-item">开发者：${developer.developername}</span>
						 	  <span class="dropdown-item mbr-editable-menu-item">下载量：${application.appdownloadcount}</span>
							</div>
					 	</li>
					 	<c:if test="${not empty user}">
					 	<li class="nav-item nav-btn">
                  			<a class="nav-link btn btn-white btn-white-outline mbr-editable-menu-item" href="toUserInfo?userid=${user.userid}">
                  				${user.usernickname}的小世界
                  			</a>
					 	</li>
					 	<li class="nav-item nav-btn">
                  			<a class="nav-link btn btn-white btn-white-outline mbr-editable-menu-item" href="exit">
                  				退出
                  			</a>
                  		</li>
					 	</c:if>
					 	<c:if test="${empty user}">
                  	  	<li class="nav-item nav-btn">
                  			<a class="nav-link btn btn-white btn-white-outline mbr-editable-menu-item" href="toLogin">
                  				登录
                  			</a>
                  		</li>
                  		<li class="nav-item nav-btn">
                  			<a class="nav-link btn btn-white btn-white-outline mbr-editable-menu-item" href="toRegist">
                  				注册
                  			</a>
                  		</li>
                  		</c:if>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</section>
</div>
<section class="mbr-section mbr-section-hero mbr-section-full header2 mbr-parallax-background mbr-after-navbar" id="header2-1" style="background-image: url(assets/images/f-mwo-dznni-averie-woodard-2000x2000.jpg);">
    <div class="mbr-overlay" style="opacity: 0.3; background-color: rgb(71, 85, 119);">
    </div>
    <div class="mbr-table mbr-table-full">
        <div class="mbr-table-cell">

            <div class="container">
                <div class="mbr-section row">
                    <div class="mbr-table-md-up">
                        <div class="mbr-table-cell col-md-5 content-size text-xs-center text-md-left" >
                            <h3 class="mbr-section-title display-2">${application.appname }</h3>

                            <div class="mbr-section-text">
                                <p>${application.appsynopsis}&nbsp;</p>
                                <p>最近更新时间
                                	<%-- ${application.appupdatetime}&nbsp; --%>
                                	<fmt:formatDate value="${application.appupdatetime}" pattern="yyyy-MM-dd HH:mm:ss" /> 
                                </p>
                            </div>
                        </div>
                        <div class="mbr-table-cell mbr-valign-top mbr-left-padding-md-up col-md-7 image-size" >
                        <!-- style="width: 50%;" mbr-table-cell-->
                            <div class="mbr-figure">
                            	<div style="width: 250px;height: 250px; float: right;" >
                            	<img src="${application.appicon }" width="250px;" height="250px;">
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="mbr-arrow mbr-arrow-floating hidden-sm-down" aria-hidden="true"><a href="#header3-k"><i class="mbr-arrow-icon"></i></a></div>

</section>
<section class="mbr-section mbr-section__container article" id="header3-k" style="background-color: rgb(244, 244, 244); padding-top: 60px; padding-bottom: 0px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2">应用信息</h3>
            </div>
        </div>
    </div>
</section>
<section class="mbr-section article mbr-section__container" id="content1-j" style="background-color: rgb(244, 244, 244); padding-top: 20px; padding-bottom: 20px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 lead">${application.appdesc}</div>
        </div>
    </div>
</section>
<hr />
<!--app截图和简介-->
<section class="mbr-section mbr-section__container article" id="header3-k" style="background-color: rgb(244, 244, 244); padding-top: 60px; padding-bottom: 0px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2">应用截图</h3>
            </div>
        </div>
    </div>
</section>
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features1-e" style="background-color: rgb(244, 244, 244);">
    <div class="mbr-cards-row row striped">
        <div class="mbr-cards-col col-xs-12 col-sm-2" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img">
                    	<img src="images/appscreenshot/interface-screenshot3.jpg" width="243px;"height="432px;">
                    </div>
                </div>
            </div>
        </div>
                <div class="mbr-cards-col col-xs-12 col-sm-2" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img">
                    	<img src="images/appscreenshot/interface-screenshot2.jpg" width="243px;"height="432px;">
                    </div>
                </div>
            </div>
        </div>
                <div class="mbr-cards-col col-xs-12 col-sm-2" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img">
                    	<img src="images/appscreenshot/interface-screenshot1.jpg" width="243px;"height="432px;">
                    </div>
                </div>
            </div>
        </div>
                <div class="mbr-cards-col col-xs-12 col-sm-2" style="padding-top: 50px; padding-bottom: 50px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img">
                    	<img src="images/appscreenshot/interface-screenshot0-1.jpg" width="243px;"height="432px;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<hr/>
<section class="mbr-section mbr-section__container article" id="header3-k" style="background-color: rgb(244, 244, 244); padding-top: 60px; padding-bottom: 0px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2">开发者的其他app</h3>
            </div>
        </div>
    </div>
</section>
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features4-i" style="background-color: rgb(244, 244, 244);">

    <!-- 开发者的其他App -->
    <div class="mbr-cards-row row"><!--  -->
    	<c:forEach items="${developer.list}" var="sameDrApp">
    	<c:if test="${empty sameDrApp}">
    		<div class="container">该开发者暂无其他App</div>
    	</c:if>
    	<c:if test="${not empty sameDrApp}">
    	<c:if test="${!(sameDrApp.appid eq application.appid)}">
        <div class="mbr-cards-col col-xs-12 col-lg-2" style="padding-top: 80px; padding-bottom: 80px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img iconbox mbr-author-img">
                    	<img src="${sameDrApp.appicon}" class="img-circle"/>
                    </div>
                    <div class="card-block">
                        <h4 class="card-title"><a href="toSingleApp?appid=${sameDrApp.appid}">${sameDrApp.appname}</a></h4>                        
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        </c:if>
        </c:forEach>
    </div>
</section>
<hr />
<section class="mbr-section mbr-section__container article" id="header3-k" style="background-color: rgb(244, 244, 244); padding-top: 60px; padding-bottom: 0px;">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mbr-section-title display-2">类似app</h3>
            </div>
        </div>
    </div>
</section>
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features4-i" style="background-color: rgb(244, 244, 244);">

    <!-- 类似App -->
    <div class="mbr-cards-row row">
    	<c:forEach items="${likelist}" var="likelist">
    	<c:if test="${!(likelist.appid eq application.appid)}">
        <div class="mbr-cards-col col-xs-12 col-lg-2" style="padding-top: 80px; padding-bottom: 80px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img iconbox mbr-author-img">
                    	<img src="${likelist.appicon}" class="img-circle"/>
                    </div>
                    <div class="card-block">
                        <h4 class="card-title"><a href="toSingleApp?appid=${likelist.appid}">${likelist.appname }</a></h4>                        
                    </div>
                </div>
            </div>
        </div>
        </c:if>
        </c:forEach>
    </div>
</section>
<hr />
<section class="mbr-section mbr-background" id="testimonials1-7" style="background-image: url(assets/images/mbr-2000x1333.jpg); padding-top: 120px; padding-bottom: 120px;">

    <div class="mbr-overlay" style="opacity: 0.8; background-color: rgb(255, 255, 255);">
    </div>

        <div class="mbr-section mbr-section__container mbr-section__container--middle">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-xs-center">
                        <h3 class="mbr-section-title display-2">
                        	评论
                        </h3>
                        <small class="mbr-section-subtitle">
							Comments with your minds
                        </small>
                    </div>
                </div>
            </div>
        </div>


    <div class="mbr-testimonials mbr-section mbr-section-nopadding">
        <div class="container" style="margin-left: 25%">
	            <div id="com" class="row">
					<div id="showcomments" style="float: left;">
						<c:if test="${empty pageBean.list }">
							<span style="margin-left: 300px; color: green;">暂无评论</span>
						</c:if>
						<div id="nowtotal">
							<span style="margin-left: 26%; ">这是第${pageBean.currentPage}页，总共${pageBean.totalPage }页</span><br>
						</div>
						<c:if test="${ not empty pageBean.list }">
						<c:forEach items="${pageBean.list}" var="listcomment">
						<div class="col-xs-12 col-lg-8 card" style="float: left;">
							<span>${listcomment.usernickname}</span>&emsp;&emsp;
							<span>${listcomment.commentdate}</span>&emsp;&emsp;
							<span>${listcomment.commentscore}分</span>
							<p class="card card-block">${listcomment.commentcontent}</p>
						</div>
						</c:forEach>
						</c:if>
					</div>
					 <div id="showpage" style="float: left;margin-left: 130px;">
					 	<c:if test="${empty pageBean.list }">
						</c:if>
						<c:if test="${ not empty pageBean.list }">
						<a id="firstpage">
							<input type="hidden" id="sy" value="${pageBean.currentPage}"/>
							<button class="btn btn-success">首页</button>
						</a>
						<a id="prepage" >
							<input type="hidden" id="syy" value="${pageBean.prePage}"/>
							<button class="btn btn-info">上一页</button>
						</a>
						<a id="nextpage" >
							<input type="hidden" id="xyy" value="${pageBean.nextPage}"/>
							<button class="btn btn-info">下一页</button>
						</a>
						<a id="endpage">
							<input type="hidden" id="wy" value="${pageBean.totalPage}"/>
							<button class="btn btn-success">尾页</button>
						</a>
						</c:if>
					</div> 
	            </div>
               <div class="col-xs-12 col-lg-8" style="float: left; padding: 0;">
                   <div class="mbr-testimonial card mbr-testimonial-lg">
                       <div id="tocom" class="card-block">
                      		<form id="comments-form" action="" method="post">
                      			<input type="hidden" id="usernickname" name="usernickname" value="${user.usernickname}"/>
							<input type="hidden" id="appid" name="appid" value="${application.appid}"/>
							<label for="score">评分：</label>
							<select id="score"><option>分数</option>
								<option value="1">1分</option><option value="2">2分</option><option value="3">3分</option><option value="4">4分</option>
								<option value="5">5分</option><option value="6">6分</option><option value="7">7分</option><option value="8">8分</option>
								<option value="9">9分</option><option value="10">10分</option>
							</select>
							<textarea id="comment" placeholder="评论" style="font-style: normal;resize: none;" rows="3" cols="60"></textarea>
							<input id="tocomment" class="btn btn-black btn-black-outline " type="button" value="提交评论" style="font-style: normal;font-weight: bold;margin-top: 30px;"/>
                      		</form>
                       </div>
                       <div class="mbr-author card-footer">
                           <c:if test="${empty user}">
                            <div class="mbr-author-img">
                            	<img src="assets/images/ellejmi6dqy-abigail-sisson-160x160.jpg" class="img-circle">
                            </div>
                           	<div class="mbr-author-name">游客你好</div>
                           </c:if>
                           <c:if test="${not empty user}">
                            <div class="mbr-author-img">
                            	<img src="images/usericon/benghuai3icon.png" class="img-circle">
                            </div>
                           	<div class="mbr-author-name">${user.usernickname}</div>
                           </c:if>
                       </div>
                   </div>
               </div>
        </div>
    </div>
</section>

<section class="mbr-section article mbr-parallax-background" id="msg-box3-g" style="background-image: url(assets/images/mbr-5.jpg); padding-top: 120px; padding-bottom: 120px;">

    <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(255, 255, 255);">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-xs-center">
                <h3 class="mbr-section-title display-2">现在就下载吧</h3><br>
                <div id="countdown">
                <c:if test="${application.appprice==0}">
                <h4>本款软件可免费下载</h4><br>
                <div>
                	<a class="btn btn-black" href="#">苹&nbsp;&nbsp;果</a>
                	<a class="btn btn-black" href="${application.appdownloadlink}">安&nbsp;&nbsp;卓</a>
                </div>
                </c:if>
                <c:if test="${application.appprice!=0}">
                	<h4>本款软件需要付费下载</h4><br>
                	<a class="btn btn-black" href="${application.appdownloadlink}">￥${application.appprice}</a>
                </c:if>
                </div>
                <br>喜欢这款App,那就&emsp;
                <a href="#" style="text-decoration: none;">收藏</a>&emsp;吧
            </div>
        </div>
    </div>

</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touch-swipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/viewport-checker/jquery.viewportchecker.js"></script>
  <script src="assets/jarallax/jarallax.js"></script>
  <script src="assets/theme/js/script.js"></script>
<script type="text/javascript">
	$("#tocom").on("click","#tocomment",function(){
		var usernickname=$("#usernickname").val();
		var appid=$("#appid").val();
		var comment=$("#comment").val();
		var score=$("#score").val();
		if (usernickname==null||usernickname=="") {
			alert("请先登录后再评论吧！");
		}else {
		$("#comments-form textarea").val("");
		$("#comments-form select").val("分数");
		$("#showcomments").empty();
		$("#showpage").empty();
		$.ajax({
			type:'POST',
			url:'toComment',
			data:{'usernickname':usernickname,'appid':appid,'comment':comment,'score':score},
			dataType:'json',
			success:function(data){
				$("#showcomments").append('<span style="margin-left: 26%;">这是第'+data.currentPage+'页，总共'+data.totalPage+'页</span><br>');
				var list=data.list;
				$.each(list,function(index,item){
					$("#showcomments").append('<div class="col-xs-12 col-lg-8 card" style="float: left; width:674.5px;"><span>'+item.usernickname+'</span>&nbsp;&nbsp;<span>'+item.commentdate+'</span>&nbsp;&nbsp;<span>'+item.commentscore+'分</span><p class="card card-block">'+item.commentcontent+'</p></div>');
				});
				$("#showpage").append(''+
						'<a id="firstpage">'+
						'<input type="hidden" id="sy" value="1"/>'+
						'<button class="btn btn-success">首页</button>'+
					'</a>'+
					'<a id="prepage" >'+
						'<input type="hidden" id="syy" value="'+data.prePage+'"/>'+
						'<button class="btn btn-info">上一页</button>'+
					'</a>'+
					'<a id="nextpage" >'+
						'<input type="hidden" id="xyy" value="'+data.nextPage+'"/>'+
						'<button class="btn btn-info">下一页</button>'+
					'</a>'+
					'<a id="endpage">'+
						'<input type="hidden" id="wy" value="'+data.totalPage+'"/>'+
						'<button class="btn btn-success">尾页</button>'+
					'</a>'+
					'');
			}
		});
	   }
	});
	<%-- ajax分页 --%>
	<%-- 首页 --%>
	$("#com").on("click","#firstpage",function(){
		var currentPage=$("#sy").val();
		var appid=${application.appid};
		$("#showcomments").empty();
		$("#showpage").empty();
		$.ajax({
			type:'POST',
			url:'doCommentPage',
			data:{
				'currentPage':currentPage,
				'appid':appid
			},	
			success:function(data){
				$("#showcomments").append('<span style="margin-left: 26%;">这是第'+data.currentPage+'页，总共'+data.totalPage+'页</span><br>');
				var list=data.list;
				$.each(list,function(index,item){
					$("#showcomments").append('<div class="col-xs-12 col-lg-8 card" style="float: left; width:674.5px;"><span>'+item.usernickname+'</span>&nbsp;&nbsp;<span>'+item.commentdate+'</span>&nbsp;&nbsp;<span>'+item.commentscore+'分</span><p class="card card-block">'+item.commentcontent+'</p></div>');
				});
				$("#showpage").html(''+
						'<a id="firstpage">'+
						'<input type="hidden" id="sy" value="1"/>'+
						'<button class="btn btn-success">首页</button>'+
					'</a>'+
					'<a id="prepage" >'+
						'<input type="hidden" id="syy" value="'+data.prePage+'"/>'+
						'<button class="btn btn-info">上一页</button>'+
					'</a>'+
					'<a id="nextpage" >'+
						'<input type="hidden" id="xyy" value="'+data.nextPage+'"/>'+
						'<button class="btn btn-info">下一页</button>'+
					'</a>'+
					'<a id="endpage">'+
						'<input type="hidden" id="wy" value="'+data.totalPage+'"/>'+
						'<button class="btn btn-success">尾页</button>'+
					'</a>'+
					'');
			}
		});
	});
	<%-- 上一页 --%>
	$("#com").on("click","#prepage",function(){
		var currentPage=$("#syy").val();
		var appid=${application.appid};
		$("#showcomments").empty();
		$("#showpage").empty();
		$.ajax({
			type:'POST',
			url:'doCommentPage',
			data:{
				'currentPage':currentPage,
				'appid':appid
			},	
			success:function(data){
				$("#showcomments").append('<span style="margin-left: 26%;">这是第'+data.currentPage+'页，总共'+data.totalPage+'页</span><br>');
				var list=data.list;
				$.each(list,function(index,item){
					$("#showcomments").append('<div class="col-xs-12 col-lg-8 card" style="float: left; width:674.5px;"><span>'+item.usernickname+'</span>&nbsp;&nbsp;<span>'+item.commentdate+'</span>&nbsp;&nbsp;<span>'+item.commentscore+'分</span><p class="card card-block">'+item.commentcontent+'</p></div>');
				});
				$("#showpage").html(''+
						'<a id="firstpage">'+
						'<input type="hidden" id="sy" value="1"/>'+
						'<button class="btn btn-success">首页</button>'+
					'</a>'+
					'<a id="prepage" >'+
						'<input type="hidden" id="syy" value="'+data.prePage+'"/>'+
						'<button class="btn btn-info">上一页</button>'+
					'</a>'+
					'<a id="nextpage" >'+
						'<input type="hidden" id="xyy" value="'+data.nextPage+'"/>'+
						'<button class="btn btn-info">下一页</button>'+
					'</a>'+
					'<a id="endpage">'+
						'<input type="hidden" id="wy" value="'+data.totalPage+'"/>'+
						'<button class="btn btn-success">尾页</button>'+
					'</a>'+
					'');
			}
		});
	});
	<%-- 下一页 --%>
	$("#com").on("click","#nextpage",function(){
		var currentPage=$("#xyy").val();
		var appid=${application.appid};
		$("#showcomments").empty();
		$("#showpage").empty();
		$.ajax({
			type:'POST',
			url:'doCommentPage',
			data:{
				'currentPage':currentPage,
				'appid':appid
			},	
			success:function(data){
				var list=data.list;
				$("#showcomments").append('<span style="margin-left: 26%;">这是第'+data.currentPage+'页，总共'+data.totalPage+'页</span><br>');
				$.each(list,function(index,item){
					$("#showcomments").append('<div class="col-xs-12 col-lg-8 card" style="float: left; width:674.5px;"><span>'+item.usernickname+'</span>&nbsp;&nbsp;<span>'+item.commentdate+'</span>&nbsp;&nbsp;<span>'+item.commentscore+'分</span><p class="card card-block">'+item.commentcontent+'</p></div>');
				});
				$("#showpage").html(''+
						'<a id="firstpage">'+
						'<input type="hidden" id="sy" value="1"/>'+
						'<button class="btn btn-success">首页</button>'+
					'</a>'+
					'<a id="prepage" >'+
						'<input type="hidden" id="syy" value="'+data.prePage+'"/>'+
						'<button class="btn btn-info">上一页</button>'+
					'</a>'+
					'<a id="nextpage" >'+
						'<input type="hidden" id="xyy" value="'+data.nextPage+'"/>'+
						'<button class="btn btn-info">下一页</button>'+
					'</a>'+
					'<a id="endpage">'+
						'<input type="hidden" id="wy" value="'+data.totalPage+'"/>'+
						'<button class="btn btn-success">尾页</button>'+
					'</a>'+
					'');
			}
		});
	});
	<%-- 尾页 --%>
	$("#com").on("click","#endpage",function(){
		var currentPage=$("#wy").val();
		var appid=${application.appid};
		$("#showcomments").empty();
		$("#showpage").empty();
		$.ajax({
			type:'POST',
			url:'doCommentPage',
			data:{
				'currentPage':currentPage,
				'appid':appid
			},	
			success:function(data){
				$("#showcomments").append('<span style="margin-left: 26%;">这是第'+data.currentPage+'页，总共'+data.totalPage+'页</span><br>');
				var list=data.list;
				$.each(list,function(index,item){
					$("#showcomments").append('<div class="col-xs-12 col-lg-8 card" style="float: left; width:674.5px;"><span>'+item.usernickname+'</span>&nbsp;&nbsp;<span>'+item.commentdate+'</span>&nbsp;&nbsp;<span>'+item.commentscore+'分</span><p class="card card-block">'+item.commentcontent+'</p></div>');
				});
				$("#showpage").html(''+
						'<a id="firstpage">'+
						'<input type="hidden" id="sy" value="1"/>'+
						'<button class="btn btn-success">首页</button>'+
					'</a>'+
					'<a id="prepage" >'+
						'<input type="hidden" id="syy" value="'+data.prePage+'"/>'+
						'<button class="btn btn-info">上一页</button>'+
					'</a>'+
					'<a id="nextpage" >'+
						'<input type="hidden" id="xyy" value="'+data.nextPage+'"/>'+
						'<button class="btn btn-info">下一页</button>'+
					'</a>'+
					'<a id="endpage">'+
						'<input type="hidden" id="wy" value="'+data.totalPage+'"/>'+
						'<button class="btn btn-success">尾页</button>'+
					'</a>'+
					'');
			}
		});
	});
</script>  
 <script type="text/javascript">
 $("#countdown a").on("click",function(){
	var appid=${application.appid};
	$.ajax({
		type:'post',
		url:'toCountDownload',
		data:{'appid':appid},
		success:function(){
		}
	});
 });
 </script> 
<input name="animation" type="hidden">
</body>
</html>