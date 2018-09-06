<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
  </head>

<body class="login">
   <div>
     	<center><h2 style="color: red;">${msg}</h2></center>
     <div class="login_wrapper">
       <div class="animate form login_form">
         <section class="login_content">
       	<div>
             <h1><i class="fa fa-paw"></i> FunnyCheer欢趣后台管理</h1>
           </div>
           <form action="doAdminLogin" method="post">
             <h1>登录</h1>
             <div>
               <input type="text" class="form-control" name="adminname" placeholder="管理员账号" required="" />
             </div>
             <div>
               <input type="password" class="form-control" name="adminwd" placeholder="密码" required="" />
             </div>
             <div style="margin-left: 100px;">
               <input type="submit" class="btn btn-primary" value="登录">
             </div>

             <div class="clearfix"></div>
           </form>
         </section>
       </div>
     </div>
   </div>
  </body>
</html>
