<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台主页</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/nprogress.css" rel="stylesheet">
    <link href="css/custom.min.css" rel="stylesheet">
  </head>
<body class="nav-md" onload="haha()">
    <div class="container body">
      <div class="main_container">
      	
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>后台管理系统</span></a>
            </div>
            <div class="clearfix"></div>
            <br />
            <div class="clearfix"></div>
            <br />
            <div class="clearfix"></div>
            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>操作</h3>
                <ul class="nav side-menu" id="caozuo">
                  <li id="showhomepage"><a><i class="fa fa-home"></i> 主页 <span class="fa fa-chevron-right"></span></a>
                  </li>
                  <li id="showappcon"><a><i class="fa fa-edit"></i> APP管理 <span class="fa fa-chevron-right"></span></a>
                  </li>
                  <li id="showusercon"><a><i class="fa fa-desktop"></i> 用户管理 <span class="fa fa-chevron-right"></span></a>
                  </li>
                  <li id="showappupload"><a><i class="fa fa-table"></i> APP上新 <span class="fa fa-chevron-right"></span></a>
                  </li>
                  <li id="showdevcon"><a><i class="fa fa-bar-chart-o"></i> 开发者管理 <span class="fa fa-chevron-right"></span></a>
                  </li>
                  <li id="showcatecon"><a><i class="fa fa-table"></i>分类管理 <span class="fa fa-chevron-right"></span></a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <ul class="nav navbar-nav navbar-right" style="margin-right: 10px;">
                <li>
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    admin
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right" style="width: 50px;">
                    <li ><a href="adminexit"><i class="fa fa-sign-out pull-right"></i>退出</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
		<!-- 主页 -->
        <div id="homepage" class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>主页</h3>
              </div>
              <br>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>主页</h2>
                    <div class="clearfix"></div>
                  </div>
                  <br>
                  <div class="x_content">
                  <br>
                  <!-- start of weather widget -->
	              <div class="col-md-4 col-sm-6 col-xs-12">
	                <div class="x_panel">
	                  <div class="x_title">
	                    <h2>今日天气</h2>
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <div class="row">
	                      <div class="col-sm-12">
	                        <div class="temperature"><b>星期一</b>, 07:30 AM
	                        </div>
	                      </div>
	                    </div>
	                    <div class="row">
	                      <div class="col-sm-4">
	                        <div class="weather-icon">
	                          <span>
	                            <canvas height="84" width="84" id="partly-cloudy-day"></canvas>
	                          </span>
	                        </div>
	                      </div>
	                      <div class="col-sm-8">
	                        <div class="weather-text">
	                          <h2>深圳
	                            <br><i>雨</i>
	                          </h2>
	                        </div>
	                      </div>
	                    </div>
	                    <div class="col-sm-12">
	                      <div class="weather-text pull-right">
	                        <h3 class="degrees">25</h3>
	                      </div>
	                    </div>
	                    <div class="clearfix"></div>
	                    <div class="row weather-days">
	                      <div class="col-sm-2">
	                        <div class="daily-weather">
	                          <h2 class="day">星期一</h2>
	                          <h3 class="degrees">25</h3>
	                          <span>
	                            <canvas id="clear-day" width="32" height="32">
	                            </canvas>
	                           </span>
	                        </div>
	                      </div>
	                      <div class="col-sm-2">
	                        <div class="daily-weather">
	                          <h2 class="day">星期二</h2>
	                          <h3 class="degrees">25</h3>
	                          <canvas height="32" width="32" id="rain"></canvas>
	                        </div>
	                      </div>
	                      <div class="col-sm-2">
	                        <div class="daily-weather">
	                          <h2 class="day">星期三</h2>
	                          <h3 class="degrees">27</h3>
	                          <canvas height="32" width="32" id="snow"></canvas>
	                        </div>
	                      </div>
	                      <div class="col-sm-2">
	                        <div class="daily-weather">
	                          <h2 class="day">星期四</h2>
	                          <h3 class="degrees">28</h3>
	                          <canvas height="32" width="32" id="sleet"></canvas>
	                        </div>
	                      </div>
	                      <div class="col-sm-2">
	                        <div class="daily-weather">
	                          <h2 class="day">星期五</h2>
	                          <h3 class="degrees">28</h3>
	                          <canvas height="32" width="32" id="wind"></canvas>
	                        </div>
	                      </div>
	                      <div class="col-sm-2">
	                        <div class="daily-weather">
	                          <h2 class="day">星期六</h2>
	                          <h3 class="degrees">26</h3>
	                          <canvas height="32" width="32" id="cloudy"></canvas>
	                        </div>
	                      </div>
	                      <div class="clearfix"></div>
	                    </div>
	                  </div>
	                </div>
	              </div>
              	  <!-- end of weather widget -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /主页 -->
        
        
        <!-- App管理 -->
        <div id="appcon" class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>App管理</h3>
              </div>
              <br>
            </div>
            <div class="clearfix"></div>
            <div class="row">
        	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>App管理<small>App管理</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      	App所有信息及操作
                    </p>
                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Appid</th>
                          <th>App名称</th>
                          <th>下载量</th>
                          <th>App更新时间</th>
                          <th>App大小</th>
                          <th>App分类</th>
                          <th>App版本</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      <tbody id="allapp">
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
        	</div>
          </div>
        </div>
        <!-- /App管理 -->
        <!-- 用户管理 -->
        <div id="usercon" class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>用户管理</h3>
              </div>
              <br>
            </div>
            <div class="clearfix"></div>
            <div class="row">
        		<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>用户操作<small>用户信息</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      	用户所有信息及操作
                    </p>
                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>用户账号</th>
                          <th>用户昵称</th>
                          <th>性别</th>
                          <th>邮箱</th>
                          <th>用户生日</th>
                          <th>注册时间</th>
                          <th>用户身份<br>(0:注册用户|1:基础用户|2:专题主)</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      <tbody id="alluser">
                        
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
        	</div>
          </div>
        </div>
        <!-- /用户管理 -->
        <!-- APP上新-->
				<div id="appupload" class="right_col"  role="main">
		          <div class="">
		            <div class="page-title">
		              <div class="title_left">
		                <h3>APP上新</h3>
		              </div>
		            </div>
		            <div class="clearfix"></div>
		
		            <div class="row">
		              <div class="col-md-12 col-sm-12 col-xs-12">
		                <div class="x_panel">
		                  <div class="x_title">
		                    <h2>APP上新 </h2>
		                    <div class="clearfix"></div>
		                  </div>
		                  <div class="x_content">
		                    <form id="uploadform" class="form-horizontal form-label-left" method="post" novalidate enctype="multipart/form-data" >
		
		                      <span class="section">APP上传</span>
		
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">App名称</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <input id="appname" name="appname"  class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" placeholder="" required="required" type="text">
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appsynopsis">简介</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <input placeholder="字数少于20" type="text" id="appsynopsis" name="appsynopsis" required="required" class="form-control col-md-7 col-xs-12">
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appsize">大小 </span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <input type="text" id="appsize" name="appsize"  required="required" placeholder="单位:M" class="form-control col-md-7 col-xs-12">
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appversion">版本</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <input type="text" id="appversion" name="appversion" required="required"  class="form-control col-md-7 col-xs-12">
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="developerid">开发者</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <select id="developerid" name="developerid">
		                          </select>
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appprice">价格 </span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <input id="appprice" type="text" name="appprice" data-validate-length-range="5,20" placeholder="0：免费；其他则为价格" class="optional form-control col-md-7 col-xs-12">
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label for="appicon" class="control-label col-md-3">icon</label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <input id="appicon" type="file" name="appicon"  class="form-control col-md-7 col-xs-12" required="required">
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label for="appcategoryid" class="control-label col-md-3 col-sm-3 col-xs-12">分类</label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          &emsp;&emsp;&emsp;
		                          <select id="appcategoryone" name="appcategoryone">
		                          	<option>一级目录</option>
		                          	<option value="应用">应用</option>
		                          	<option value="游戏">游戏</option>
		                          </select>
		                          &emsp;&emsp;&emsp;&emsp;
		                          <select id="appcategoryid" name="appcategoryid">
		                          </select>
		                        </div>
		                      </div>
		                      <div class="item form-group">
		                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="appdesc">详细信息</span>
		                        </label>
		                        <div class="col-md-6 col-sm-6 col-xs-12">
		                          <textarea id="appdesc" required="required" name="appdesc" class="form-control col-md-7 col-xs-12" style="resize:none;"></textarea>
		                        </div>
		                      </div>
		                      <div class="ln_solid"></div>
		                      <div class="form-group">
		                        <div class="col-md-6 col-md-offset-3">
		                          <button type="reset" class="btn btn-primary">重置</button>
		                          <input id="upload" type="button" class="btn btn-success" value="上传"/>
		                        </div>
		                      </div>
		                    </form>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
		        <!-- /APP上新-->
        <!-- 发行者管理 -->
        <div id="devcon" class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>发行者管理</h3>
              </div>
              <br>
            </div>
            <div class="clearfix"></div>
            <div class="row">
        	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>发行者管理</h2><span id="devmsg"></span>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      	发行者管理
                    </p>
                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>发行者id</th>
                          <th>发行者名称</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      <tbody id="alldev">
                      </tbody>
                    </table>
                    <div>
                    	添加开发者<br>
                    		<form>
                    			<br />
                    			<input type="text" name="developername" id="developername" placeholder="发行者名称" />
                    			<br /><br /><br />
                    			<input id="adddev" type="button" value="提交" />
                    		</form>
                    </div>
                  </div>
                </div>
              </div>
        	</div>
          </div>
        </div>
        <!-- /发行者管理 -->
        
        <!-- 分类管理 -->
        <div id="catecon" class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>分类管理</h3><span id="catemsg"></span>
              </div>
              <br>
            </div>
            <div class="clearfix"></div>
            <div class="row">
        	<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>分类管理</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      	分类管理
                    </p>
                    <table id="datatable-fixed-header" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>分类id</th>
                          <th>一级分类</th>
                          <th>二级分类</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                      <tbody id="allcate">
                        <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>
                          	删除
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <div>
                    	添加分类<br>
                    		<form>
                    			<select id="appcategoryone2"><option>选择分类</option>
                    				<option value="应用">应用</option>
                    				<option value="游戏">游戏</option>
                    			</select><br /><br /><br />
                    			<input type="text" name="appcategoryname2" id="appcategoryname2" placeholder="分类名称" />
                    			<br /><br /><br />
                    			<input id="addcate" type="button" value="提交" />
                    		</form>
                    </div>
                  </div>
                </div>
              </div>
        	</div>
          </div>
        </div>
        <!-- /分类管理 -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="js/nprogress.js"></script>
    <!-- validator -->
    <script src="js/validator.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="js/custom.js"></script>
<!-- Google Analytics -->
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-23581568-13', 'auto');
ga('send', 'pageview');
function haha(){
	$("#homepage").show();
	$("#appcon").hide();
	$("#usercon").hide();
	$("#appupload").hide();
	$("#devcon").hide();
	$("#catecon").hide();
}
$("#showhomepage").on("click",function(){
	$("#homepage").show();
	$("#appcon").hide();
	$("#usercon").hide();
	$("#appupload").hide();
	$("#devcon").hide();
	$("#catecon").hide();
});

$("#caozuo").on("click","#showappcon",function(){
	$("#homepage").hide();
	$("#appcon").show();
	$("#usercon").hide();
	$("#appupload").hide();
	$("#devcon").hide();
	$("#catecon").hide();
	$.ajax({
		type:'POST',
		url:'operateApp',
		success:function(data){
			$.each(data,function(index,item){
				$("#allapp").append(''+
				'<tr>'+
                '<td>'+item.appid+'</td>'+
                '<td>'+item.appname+'</td>'+
                '<td>'+item.appdownloadcount+'</td>'+
                '<td>'+item.appupdatetime+'</td>'+
                '<td>'+item.appsize+'</td>'+
                '<td>'+item.appcategoryid+'</td>'+
                '<td>'+item.appversion+'</td>'+
                '<td><a>删除</a></td>'+
              	'</tr>');
			});
		}
	});
});
$("#caozuo").on("click","#showusercon",function(){
	$("#homepage").hide();
	$("#appcon").hide();
	$("#usercon").show();
	$("#appupload").hide();
	$("#devcon").hide();
	$("#catecon").hide();
	$("#alluser").empty();
	$.ajax({
		type:'POST',
		url:'operateUser',
		success:function(data){
			$.each(data,function(index,item){
				$("#alluser").append(''+
				'<tr>'+
                '<td>'+item.username+'</td>'+
                '<td>'+item.usernickname+'</td>'+
                '<td>'+item.usersex+'</td>'+
                '<td>'+item.useremail+'</td>'+
                '<td>'+item.userbirthday+'</td>'+
                '<td>'+item.userregisttime+'</td>'+
                '<td>'+item.useridentity+'</td>'+
                '<td><a>删除</a></td>'+
              	'</tr>');
			});
		}
	});
});
$("#caozuo").on("click","#showappupload",function(){
	$("#homepage").hide();
	$("#appcon").hide();
	$("#usercon").hide();
	$("#appupload").show();
	$("#devcon").hide();
	$("#catecon").hide();
	
	$("#appupload").on("change","#appcategoryone",function(){
		var appcategoryone=$("#appcategoryone").val();
		$.ajax({
			type:'post',
			url:'getAppcategoryByOne',
			data:{'appcategoryone':appcategoryone},
			dataType:'json',
			success:function(data){
				$("#appcategoryid").empty();
				$.each(data,function(index,item){
					$("#appcategoryid").append('<option value="'+item.appcategoryid+'">'+item.appcategoryname+'</option>');
				});
			}
		});
		
	});
	
	$.ajax({
		type:'POST',
		url:'operateDeveloper',
		success:function(data){
			$.each(data,function(index,item){
				$("#developerid").append('<option value="'+item.developerid+'">'+item.developername+'</option>');
			});
		}
	});
	$("#upload").on("click",function(){
		var formdata = new FormData($("#uploadform")[0]);
		$.ajax({
			type:'post',
			url:'uploadApp',
			data:formdata,
			processData:false,
			contentType:false,
			success:function(data){
				if (data=='1') {
					alert("上传成功");
				}
			}
		});
	});
});

$("#caozuo").on("click","#showdevcon",function(){
	$("#homepage").hide();
	$("#appcon").hide();
	$("#usercon").hide();
	$("#appupload").hide();
	$("#devcon").show();
	$("#catecon").hide();
	$("#alldev").empty();
	$("#devmsg").empty();
	$.ajax({
		type:'POST',
		url:'operateDeveloper',
		success:function(data){
			$.each(data,function(index,item){
				$("#alldev").append(''+
				'<tr>'+
                '<td>'+item.developerid+'</td>'+
                '<td>'+item.developername+'</td>'+
                '<td><a>删除</a></td>'+
              	'</tr>');
			});
		}
	});
	$("#adddev").on("click",function(){
		var developername = $("#developername").val();
		$.ajax({
			type:'POST',
			url:'addDevloper',
			data:{'developername':developername},
			success:function(data){
				if(data=='1'){
					$("#devmsg").append("<h3 style='color:red;'>添加成功</h3>");
				}
			}
		});
	});
});

$("#caozuo").on("click","#showcatecon",function(){
	$("#homepage").hide();
	$("#appcon").hide();
	$("#usercon").hide();
	$("#appupload").hide();
	$("#devcon").hide();
	$("#catecon").show();
	$("#allcate").empty();
	$("#catemsg").empty();
	$.ajax({
		type:'POST',
		url:'operateCategory',
		success:function(data){
			$.each(data,function(index,item){
				$("#allcate").append(''+
				'<tr>'+
                '<td>'+item.appcategoryid+'</td>'+
                '<td>'+item.appcategoryone+'</td>'+
                '<td>'+item.appcategoryname+'</td>'+
                '<td><a>删除</a></td>'+
              	'</tr>');
			});
		}
	});
	$("#addcate").on("click",function(){
		var appcategoryone = $("#appcategoryone2").val();
		var appcategoryname= $("#appcategoryname2").val();
		$.ajax({
			type:'POST',
			url:'addCategory',
			data:{'appcategoryone':appcategoryone,
					'appcategoryname':appcategoryname},
			success:function(data){
				if(data=='1'){
					$("#catemsg").append("<h3 style='color:red;'>添加成功</h3>");
				}
			}
		});
	});
	
});
</script>
  </body>
</html>
