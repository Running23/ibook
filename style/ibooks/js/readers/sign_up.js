$(document).ready(function() {
	//点击注册按钮
	$("#sign_submit").click(function saveRegisterFomr() {
		//密码加密
		var mod_pass=hex_md5($('#password').val());
		$('#password').val(mod_pass);
		
		// FormData对象，可以把所有表单元素的name与value组成一个queryString，提交到后台。
		// new FormData的参数是一个DOM对象，而非jQuery对象,可以通过该$("")[0]来获取
	    var formData = new FormData($("#resiginreader")[0]);
		var ajaxUrl = "/ibook/l_system/readers/saveRegister";
		$.ajax({
			type : "POST",
			url : ajaxUrl,
		    data : formData,
			async : false,
			cache : false,
			contentType : false,// 告诉jQuery不要去设置Content-Type请求头
			processData : false,// 告诉jQuery不要去处理发送的数据
			success : function(data) {
				if(data.success){
					alert(data.message);
					document.location.href = "/ibook/l_system/index/login/view";
				}
			},
			error : function(data) {
				console.log("加载失败");
				alert("error:" + data.responseText);

			}
		});

	});
	
	
	
	// 获取上传按钮
	var input1 = document.getElementById("upload");

	if (typeof FileReader === 'undefined') {
		// result.innerHTML = "抱歉，你的浏览器不支持 FileReader";
		input1.setAttribute('disabled', 'disabled');
	} else {
		input1.addEventListener('change', readFile, false);
		/*
		 * input1.addEventListener('change',function (e){
		 * console.log(this.files);//上传的文件列表 },false);
		 */
	}
	function readFile() {
		var file = this.files[0];// 获取上传文件列表中第一个文件
		if (!/image\/\w+/.test(file.type)) {
			// 图片文件的type值为image/png或image/jpg
			alert("文件必须为图片！");
			return false;
		}
		// console.log(file);
		var reader = new FileReader();// 实例一个文件对象
		reader.readAsDataURL(file);// 把上传的文件转换成url
		// 当文件读取成功便可以调取上传的接口
		reader.onload = function(e) {
			// console.log(this.result);//文件路径
			// console.log(e.target.result);//文件路径
			/*
			 * var data = e.target.result.split(','); var tp = (file.type ==
			 * 'image/png')? 'png': 'jpg'; var imgUrl =
			 * data[1];//图片的url，去掉(data:image/png;base64,)
			 * //需要上传到服务器的在这里可以进行ajax请求 // console.log(imgUrl); // 创建一个 Image 对象
			 * var image = new Image(); // 创建一个 Image 对象 // image.src = imgUrl;
			 * image.src = e.target.result; image.onload = function(){
			 * document.body.appendChild(image); }
			 */

			var image = new Image();
			// 设置src属性
			image.src = e.target.result;
			var max = 200;
			// 绑定load事件处理器，加载完成后执行，避免同步问题
			image.onload = function() {
				// 获取 canvas DOM 对象
				var canvas = document.getElementById("cvs");
				// 如果高度超标 宽度等比例缩放 *=
				/*
				 * if(image.height > max) { image.width *= max / image.height;
				 * image.height = max; }
				 */
				// 获取 canvas的 2d 环境对象,
				var ctx = canvas.getContext("2d");
				// canvas清屏
				ctx.clearRect(0, 0, canvas.width, canvas.height);
				// 重置canvas宽高
				/*
				 * canvas.width = image.width; canvas.height = image.height; if
				 * (canvas.width>max) {canvas.width = max;}
				 */
				// 将图像绘制到canvas上
				// ctx.drawImage(image, 0, 0, image.width, image.height);
				ctx.drawImage(image, 0, 0, 200, 200);
				// 注意，此时image没有加入到dom之中
			};
		}
	}

	
	
	//格式控制
	
	//document.getElementById("readerNickname").value="";
	document.getElementById("phone").value="";
	document.getElementById("readerName").value="";
/*	document.getElementById("code").value="";*/
/*	document.getElementById("email").value="";*/
//	$("#readerNickname").blur(function(){
//   	var n=document.getElementById("readerNickname").value;  	
//   	var reg=/^[a-zA-Z][0-9a-zA-Z]*$/;
//   	if(n.length<6||n.length>10){
//   		alert("输入用户名长度不正确！");
//   		document.getElementById("readerNickname").value="";
//   	}
//   	else if(!reg.test(n)){
//   		alert("要以字母开头");
//   		document.getElementById("readerNickname").value="";
//   	}
//   	})
	$("#phone").blur(function(){
   	var n1=document.getElementById("phone").value;
   	var reg=/^1[3|4|5|8][0-9]\d{4,8}$/;
   	if(n1.length>11||(!reg.test(n1))){
   		alert("输入电话号码不正确！");
   		document.getElementById("phone").value="";
   	}
	})
	$("#pass1").blur(function(){
		var n=document.getElementById("password1").value;
		var n1=document.getElementById("password").value;
		if(n!=n1)
		{
			alert("两次密码输入不正确!");
			document.getElementById("password").value="";
		}
	})
	/*$("#email").blur(function(){
		var n=document.getElementById("email").value;
		var reg=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
		if(!reg.test(n)){
			alert("邮箱格式错误!");
			document.getElementById("email").value="";
		}
	})*/
	$("#readerName").blur(function(){
		var n=document.getElementById("readerName").value;
		var reg=/^[\u4E00-\u9FA5]{1,5}$/;
		if(n.length<2||n.length>5||(!reg.test(n))){
			alert("输入姓名不正确！");
			document.getElementById("readerName").value="";
		}
	})
	/*var code;
	var code1;
	function checkcode(){
			code = "";
    		var checkCode = document.getElementById("checkCode");
   			function RndNum(n) {
     		var rnd = "";
      		for (var i=0;i<n;i++)
        	rnd+=Math.floor(Math.random()*10);
     		return rnd;
    		}
    		var num=RndNum(2);
    		var num2=RndNum(2);
    		code = num + "+" + num2 + "=";
    		code2 = parseInt(num) + parseInt(num2)
    		if (checkCode) {
      		checkCode.classreaderNickname = "code";
      		checkCode.value = code;
    		}
			}	
    $("#code").blur(function () {
      var inputCode = document.getElementById("code").value;
      if (inputCode.length <= 0) {
        alert("请输入验证码！");
      }
      else if (inputCode != code2) {
        alert("验证码输入错误！");
        checkcode(); //刷新验证码
        document.getElementById("code").value="";
      }
      
    });*/
   
   	$("#b1").attr("checked","checked");
	$("#a1").attr("checked","checked");

});


