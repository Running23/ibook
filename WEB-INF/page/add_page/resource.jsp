<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>电子技术书</title>
		<link rel="stylesheet" href="<%=basePath%>/style/indexassets/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/common/addpage_common.css" />
		<script src="<%=basePath%>/style/indexassets/js/jquery.min.js"></script>
		<script src="<%=basePath%>/style/indexassets/js/bootstrap.min.js"></script>
		<script src="<%=basePath%>/style/indexassets/js/jquery.simplePagination.js"></script>
		<!--css和js脚本写在外面  -->
		<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/addpage_css/resource.css" />
		<script src="<%=basePath%>/style/ibooks/js/addpage_js/resource.js"></script>
	</head>
	<body>
		<section class="section-wrap1">		
		<div class="section section-1 ">			
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>			
			</nav>
			<!-- 写页面代码 -->
			<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 a6">
				<%@ include file="/WEB-INF/page/common/left_commonother.jsp"%>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
  					<div class="row">
						<div class="form-control nw-b1"><p class="over">你现在的位置是：首页->借还系统后台->图书资源搜索</p></div>
					</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  				<div class="row">
  					<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
	  					<select class="sel" style="width: 90%;" id="select">
							<option selected = "selected"  value = "socilism">选择</option>
							<option value = "school">选择1</option>
						</select>
					</div>
					<div class="col-xs-6 col-sm-8 col-md-8 col-lg-8">
						<input type="text" class="form-control inp" id="join_content" placeholder="搜索资源">
					</div>
					<div class="col-xs-3 col-sm-2 col-md-2 col-lg-2">
						<input type="button" class="btn btn-danger inp" id="join_btn" value="搜索">
					</div>
  				</div>
  				</div>
  				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 tab_one">
  				<div class="row">
  					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
  						<img src="<%=basePath%>/style/indexassets/image/1.jpg" class="img-responsive img_one">
  					</div>
  					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
  						<p class="text_two">书名</p>
  						<div id="r_content" class="r_content">
  						asdhjagjfhsjfhdjkfgjkdsfhkjdsfhdkjsfhkdsjhfkjasdhfkjdhcmxbzmvjdgfjhfkjdshfkerierhejfdjvbjdbvjfbvjfbvmxcbnvmncbxvcmxgbdfjghjdfbvnmxcvjmcx
  						zjdbfvkjdnkjghdfkjhjmbvcxmbvcxvbgfkusdfhueshfilrhilkhvkfjhvkjxbvcjmvgxjychvgdfxjhmvbxmfnvgbdxjhnbvdjfhxjgjdfgjdmvhdfvhkdxfjghjhvgjdfdjgdj
  						vjdgfdsjhfgdsjkfhsdkjfhlsdkfhsdkhjvcnbvhcxgvjasdhjagjfhsjfhdjkfgjkdsfhkjdsfhdkjsfhkdsjhfkjasdhfkjdhcmxbzmvjdgfjhfkjdshfkerierhejfdjvbjdbvjfbvjfbvmxcbnvmncbxvcmxgbdfjghjdfbvnmxcvjmcx
  						zjdbfvkjdnkjghdfkjhjmbvcxmbvcxvbgfkusdfhueshfilrhilkhvkfjhvkjxbvcjmvgxjychvgdfxjhmvbxmfnvgbdxjhnbvdjfhxjgjdfgjdmvhdfvhkdxfjghjhvgjdfdjgdj
  						vjdgfdsjhfgdsjkfhsdkjfhlsdkfhsdkhjvcnbvhcxgvjasdhjagjfhsjfhdjkfgjkdsfhkjdsfhdkjsfhkdsjhfkjasdhfkjdhcmxbzmvjdgfjhfkjdshfkerierhejfdjvbjdbvjfbvjfbvmxcbnvmncbxvcmxgbdfjghjdfbvnmxcvjmcx
  						zjdbfvkjdnkjghdfkjhjmbvcxmbvcxvbgfkusdfhueshfilrhilkhvkfjhvkjxbvcjmvgxjychvgdfxjhmvbxmfnvgbdxjhnbvdjfhxjgjdfgjdmvhdfvhkdxfjghjhvgjdfdjgdj
  						vjdgfdsjhfgdsjkfhsdkjfhlsdkfhsdkhjvcnbvhcxgvj
  						</div>
  					</div>
  				</div>
  				<div class="row">
  					<hr class="hr_one" size=4>
  				</div>
  				<div class="row">
  					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
  						<img src="<%=basePath%>/style/indexassets/image/1.jpg" class="img-responsive img_one">
  					</div>
  					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
  						<p class="text_two">书名</p>
  						<div id="r_content" class="r_content">
  						asdhjagjfhsjfhdjkfgjkdsfhkjdsfhdkjsfhkdsjhfkjasdhfkjdhcmxbzmvjdgfjhfkjdshfkerierhejfdjvbjdbvjfbvjfbvmxcbnvmncbxvcmxgbdfjghjdfbvnmxcvjmcx
  						zjdbfvkjdnkjghdfkjhjmbvcxmbvcxvbgfkusdfhueshfilrhilkhvkfjhvkjxbvcjmvgxjychvgdfxjhmvbxmfnvgbdxjhnbvdjfhxjgjdfgjdmvhdfvhkdxfjghjhvgjdfdjgdj
  						vjdgfdsjhfgdsjkfhsdkjfhlsdkfhsdkhjvcnbvhcxgvjasdhjagjfhsjfhdjkfgjkdsfhkjdsfhdkjsfhkdsjhfkjasdhfkjdhcmxbzmvjdgfjhfkjdshfkerierhejfdjvbjdbvjfbvjfbvmxcbnvmncbxvcmxgbdfjghjdfbvnmxcvjmcx
  						zjdbfvkjdnkjghdfkjhjmbvcxmbvcxvbgfkusdfhueshfilrhilkhvkfjhvkjxbvcjmvgxjychvgdfxjhmvbxmfnvgbdxjhnbvdjfhxjgjdfgjdmvhdfvhkdxfjghjhvgjdfdjgdj
  						vjdgfdsjhfgdsjkfhsdkjfhlsdkfhsdkhjvcnbvhcxgvjasdhjagjfhsjfhdjkfgjkdsfhkjdsfhdkjsfhkdsjhfkjasdhfkjdhcmxbzmvjdgfjhfkjdshfkerierhejfdjvbjdbvjfbvjfbvmxcbnvmncbxvcmxgbdfjghjdfbvnmxcvjmcx
  						zjdbfvkjdnkjghdfkjhjmbvcxmbvcxvbgfkusdfhueshfilrhilkhvkfjhvkjxbvcjmvgxjychvgdfxjhmvbxmfnvgbdxjhnbvdjfhxjgjdfgjdmvhdfvhkdxfjghjhvgjdfdjgdj
  						vjdgfdsjhfgdsjkfhsdkjfhlsdkfhsdkhjvcnbvhcxgvj
  						</div>
  					</div>
  				</div>
  				</div>
			</div>
			</div>
  		</div>  					  				
		</section>
	</body>
</html>
