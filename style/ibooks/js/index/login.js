$(document).ready(function(){
	$("#login").click(
	function login() {
		var userID = $('#userID').val();
		var psd = $('#psd').val();
		if(userID == ''||psd == ''){
			$("#resultMsg").html("账号和密码不能为空");
			return false;
		}
		var password = hex_md5(psd);
		$.ajax({
			url: '/ibook/l_system/index/login',
			type: 'post',
			data: {'userID': userID, "password": password},
			success:function(json){
				if(json.success==0){
					$("#resultMsg").html(json.massage);
					return false;
				}else if(json.success==-1){
					$("#resultMsg").html(json.massage);
					return false;
				}else if(json.success==1){
					document.location.href = "/ibook/l_system/data_count/sys_count/view";
					return false;
				}
			},
			error:function(){
				$("#resultMsg").html("系统维护中");
				return false;
			}
		})
	});
});