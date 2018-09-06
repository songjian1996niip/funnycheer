//=======================注册后的用户信息的新增以及修改==================================//
//用户新增信息，成为基础用户
/*$(document).ready(function(){*/
//修改用户个性签名
function subuserdesc() {
	var userdesc = $('#userdesc').val();
	var userid=$('#userid').val();
	/*alert(userdesc);*/
	$.ajax({
		type:'POST',
		dataType:'json',
		url:'updateUserDesc',
		data:{userdesc:userdesc,userid:userid},
		success:function(data){
			/*alert(data.user.userdesc);*/
			$('#userdescspan').html(data.user.userdesc);
			$('#userdesc').val("");
		}
	})		
};
//新增、修改用户基础信息






