<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />
	<meta name="renderer" content="webkit">
	<title>个人信息</title>
	<link rel="stylesheet" href="<%=basePath%>/style/indexassets/css/bootstrap.min.css">
	<link href="<%=basePath%>/style/indexassets/font/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" href="<%=basePath%>/style/indexassets/css/style3.css">
			<script src="<%=basePath%>/style/indexassets/js/two.js"></script>
	<!--[if lte IE 8]>
	<style type="text/css">
		html,body{width:100%; height:100%; overflow:scroll}
		.section-btn{display:none;}
	</style>
	<![endif]-->
	<style>
	@media (max-width:480px ) {
		.hh{height: 50px;width: 50px;margin-left: 5px;margin-bottom: 50px;}
		.new{width: 100%;overflow: scroll;}
		}
		.gg{height: 500px}
		
	</style>
</head>
<body>

	<section class="section-wrap">
		
		<div class="section section-1 ">

			<div class="container-fluid" >
			<div id="main-content" class="new" style="width: 100%;height: 100%;margin:0 auto;" >
				<div >
						<table   class="table table-condensed"  >
							<tr>
								<td >
									<div ><img  src="<%=basePath%>/style/indexassets/image/11.jpg" class="img-circle hh" width="100" style="margin-left: 20px;margin-bottom: 50px;"></div>
									
								</td>
								<td style="padding-right: 20px;">
									<div style="float: right;font-size: 12px;"><img src="<%=basePath%>/style/indexassets/image/时钟.png" style="height: 15px;">2017年9月22日 00:00</div>
									<div style="padding-top:50px;padding-left: 50px;">
									<div style="float: left;font-size: 12px;">欢迎你<img src="<%=basePath%>/style/indexassets/image/user.png" style="height: 15px;" />
            						<span>XXX</span><a href="#" style="font-size: 12px;">[退出]</a>
									</div>
									<div style="float: right;"> 
									<span style="font-size: 12px;"><img src="<%=basePath%>/style/indexassets/image/新闻报道.png" style="height: 15px;" >&nbsp;&nbsp;您有 1条信息未读</span>
									</div>
						
									</div>
								
								<DIV style="padding-top: 30px;">
<!--主导航开始-->
 									<DIV id=mainmenu_top>
 										<UL>
 										<LI style="font-size: 14px;"><A id=mm1 onmouseover=showM(this,1); onmouseout=OnMouseLeft(); href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/user.png" style="width: 30px;height: 30px;" />
									个人中心</A> </LI>
 										<LI style="font-size: 14px;"><A id=mm2 onmouseover=showM(this,2); onmouseout=OnMouseLeft(); href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/book2.png" style="width: 30px;height: 30px;"/>
									借阅服务</A> </LI>
 										<LI style="font-size: 14px;"><A id=mm3 onmouseover=showM(this,3); onmouseout=OnMouseLeft(); href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/person.png" style="width: 30px;height: 30px;"/>
									我的信息</A> </LI>
 										<LI style="font-size: 14px;"><A id=mm4 onmouseover=showM(this,4); onmouseout=OnMouseLeft(); href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/else.png" style="width: 30px;height: 30px;"/>
									其他信息</A> </LI>
 
 										</DIV>
<!--子导航导航开始--><p><hr style="border:1.5px solid #ba7603;" />
 										<DIV id="mainmenu_bottom">
 										<DIV class="mainmenu_rbg">
  									<UL class="hide" id="mb1" style="padding-left: 10px;">
  
  										<LI style="MARGIN-LEFT: 7px;font-size: 12px;"><A href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/个人资料.png" style="width: 50px;height: 30px;"/>
									个人资料</A> </LI>
 										
										</UL>
  
  									<UL  class=hide id=mb3 style="padding-left: 10px;">
  
  										<LI style="MARGIN-LEFT: 7px;font-size: 12px;"><A href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/massge.png" style="width: 25px;height: 25px;"/>
									通知</A> </LI>
 											<LI style="font-size: 12px;"><A href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/phone.png" style="width: 25px;height: 25px;"/>
									活动报名</A> </LI>
  										<LI style="font-size: 12px;"><A href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/ding.png" style="width: 25px;height: 25px;"/>
									我的订阅</A> </LI>
  										<LI style="font-size: 12px;"><A href="#" target=_parent><img src="<%=basePath%>/style/indexassets/image/learn.png" style="width: 25px;height: 25px;"/>
									学习计划</A> </LI>
										</UL>

 						</DIV>
 						</DIV>
						</DIV>
								
							</td>
							
						</tr>
						<tr style="padding-left: 50px;">
							<td style="background-color: #f1ede4;" colspan="2" >
								<div>
								<h1 style="font-size:16px ;float: left;"><img src="<%=basePath%>/style/indexassets/image/个人资料.png" style="height: 40px;margin-top: 10px;"/>个人资料</h1>
								<a  href="#" style="text-decoration: none;float: right;padding-right: 5px;font-size: 14px;margin-top: 10px;">修改资料</a>
								<a href="#" style="text-decoration: none;float: right;padding-right: 5px;font-size: 14px;margin-top: 10px;">修改密码</a>
								<a href="#" style="text-decoration: none;float: right;padding-right: 5px;font-size: 14px;margin-top: 10px;">修改头像</a>
								<a href="#" style="text-decoration: none;float: right;padding-right: 5px;font-size: 14px;margin-top: 10px;">账号绑定</a>
								</div>
							</td>
						</tr>
						
						<tr>
							<td colspan="2" style="background-color: #f1ede4;">
								<p style="font-size: 16px;text-align:left; margin: 10px 0 10px 0;">&nbsp;&nbsp;用户名：<span>Running203</span></p>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="background-color: #f1ede4;">
								<p style="font-size: 16px;text-align:left;margin: 10px 0 10px 0;">&nbsp;&nbsp;姓&nbsp;&nbsp;&nbsp;名：<span>方健润</span></p>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="background-color: #f1ede4;">
								<p style="font-size: 16px;text-align:left;margin: 10px 0 10px 0;">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;别：<span>男</span></p>
							</td>
						</tr>
						<tr>
							<td colspan="2"  style="background-color: #f1ede4;"> 
								<p style="font-size: 16px;text-align:left;margin: 10px 0 10px 0;">&nbsp;&nbsp;Email：<span>2552666842@qq.com</span></p>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="background-color: #f1ede4;">
								<p style="font-size: 16px;text-align:left;margin: 10px 0 10px 0;">&nbsp;&nbsp;手机号码：<span>13632216846</span></p>
							</td>
						</tr>
						</table>
				</div>		
				</div>	
			</div>
		</div>
	
	</section>
	
	

<script src="style/js/jquery.min.js"></script>
	<script src="style/js/bootstrap.min.js"></script>



</body>
</html>