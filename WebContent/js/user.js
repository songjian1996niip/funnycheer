/**
 * 用户js文件
 */



//用户昵称是否可用
$(document).ready(function(){
     $("#usernickname").blur(function(){
    	 var usernickname=$("#usernickname").val();
    	 if (usernickname==null||usernickname=="") {
    		 $("#msg").html("账号不能为空");
		}else{
         $.ajax({
            url:"checkUserNickname",
            type: "POST",
            datatype:"json",
            data:{"usernickname":usernickname},
            success:function(data){
                var str = data.resultNickname;
                if(str == "success"){
                	$("#msg").html("");
                }else{
                	$("#msg").html('该用户名不可用！');
                } 
            }
        });
	  }
    });   
});
//用户账号是否可用,注册时数据库没有账号则success，登录时数据库有账号则success
$(document).ready(function(){
     $("#username_regist").blur(function(){
    	 var username=$("#username_regist").val();
    	 if (username==""||username==null) {
    		 $("#msg").html("账号不能为空");
		}else{
         $.ajax({
            url:"checkUsername",
            type: "POST",
            datatype:"json",
            data:{"username":username},
            success:function(data){
                var str = data.resultUsername;
                if(str != "success"){
                	$("#msg").html('该账号不可用！');
                }else{
                	$("#msg").html("");
                } 
            }
        });
	  }
    });
     $("#username_login").blur(function(){	
    	var username=$("#username_login").val();
    	if (username==null||username=="") {
    		$("#msg").html("账号不能为空");
		}else {
 		$.ajax({
 		    url:"checkUsername",
 		    type: "POST",
 		    datatype:"json",
 		    data:{"username":username},
 		    success:function(data){
 	        var str = data.resultUsername;
 	        if(str == "success"){
 	        	$("#msg").html('没有这个账号，如果你很喜欢这个账号可以去注册一个');
 	        }else{
 	        	$("#msg").html("");
 	           } 
            }
        });
	  }
    });
});

//用户邮箱是否可用
$(document).ready(function(){
     $("#useremail").blur(function(){
    	 var useremail=$("#useremail").val();
    	 if (useremail==null||useremail=="") {
    		 $("#msg").html("邮箱不能为空");
		}else {
			$.ajax({
				url:"checkUseremail",
				type: "POST",
				datatype:"json",
				data:{"useremail":useremail},
				success:function(data){
					var str = data.resultUseremail;
					if(str == "success"){
						$("#msg").html("");
					}else{
						$("#msg").html('该邮箱不可用！');
					} 
				}
			});  
		}
    });
});
$(document).ready(function(){
    $("#checkpassword").blur(function(){
    	var password=$("#password").val();
    	var checkpassword=$("#checkpassword").val();
    	if(password!=checkpassword){
    		$("#msg").html("请保持两次密码一致！");
    	}else {
    		$("#msg").html("");
		}
    });
});
