<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0" />
	<title>首页</title>
	<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/ext_assets_css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/style2.css" />
    <link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/front2.css" />
    <link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/extend_asset_css/indexFirst.css" />
	<link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/table_style.css" /> 
    <link rel="stylesheet" href="<%=basePath%>/style/ibooks/css/indexfirst/changestyle2.css" />
    
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/jquery.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/ext_assets_js/bootstrap.min.js"></script>
	<script src="<%=basePath%>/style/ibooks/js/index/indexFirst.js"></script>
</head>
<body>
	<section class="section-wrap" >		
		<div class="section section-1 " >
			<nav class="navbar navbar-default navbar-fixed-top" >
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>
			</nav>
			<div class="container-fluid" style="position: relative;">
				
				<div>
				<ol><button class="btn b11"><span class="a12">搜索</span></button></ol>
				<ol><button class="btn b12" ><span class="a12">阅读信息</span></button></ol>
				</div>
				<div class="row">
				<div class="col-md-3">
				<div class="a6" style="padding-top: 80%;">
				<!-- 侧边悬浮框 -->
				<%@ include file="/WEB-INF/page/common/left_common.jsp"%>
				</div>
				</div>
				
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-7">
					<div class="row r1">			
						<div class="col-xs-12 col-sm-5 col-sm-offset-2 col-md-6  col-lg-5 col-lg-offset-1">
							<b class="text1">共益图书借还系统</b><br />
							<b class="text2">GONG YI JIE HUAN XI TONG</b>
					</div>
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 one">
						<img src="<%=basePath%>/style/ibooks/img/5.gif" />
					</div>
					<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 one1">
						<b class="one tab1">共益图书</b>
						<p><b class="one tab1">XXXXXXX</b></p>
					</div>
				</div>
				<div class="row r2">				
						<div class="col-xs-4 col-sm-2 col-sm-offset-1 col-md-2 col-lg-2 col-lg-offset-0">
						<select class="sel" style="width: 100%;" id="select">
								<option selected = "selected"  value = "select">选择</option>
								<option value = "bookTitl">书名</option>
								<option value = "author">作者</option>
								<option value = "bookTypes">分类号</option>
								<option value = "bookNumber">ISBN</option>
						</select>
				   		</div>
				   		<div class="col-xs-4 col-sm-6 col-md-6 col-lg-7">
							<input class="form-control" type="text" placeholder="Search..." required  id="keyword">	
							
						</div>
						<div class="col-xs-1 col-sm-1 col-md-2 col-lg-1">
							<input id="searchIn" class="btn btn-default btn-danger btn1"  value="搜索">	
						</div>
				</div>
<!-- 				<div class="row"> -->
<!-- 					<div class="col-xs-11 col-sm-9 col-md-10 col-md-offset-2 col-lg-8 col-md-offset-0 text5"> -->
<!-- 						<a href="#">图书馆2017年流动图书馆服务安排</a> -->
<!-- 						<a href="#">更多>></a> -->
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="row">

				<div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-10 col-lg-10 col-lg-offset-1">
						<div class="suggest-search fc" id="suggest-search" style="margin-left: 65px;">
							<ul>
							</ul>
						</div>
				</div>
				</div>
			</div>	
			</div>
		</div>
		</div>		
		
		<div class="section section-2">		
			<nav class="navbar navbar-default">
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>			
			</nav>
			<div class="container-fluid">
				<div class="row">
				<div class="a6 col-md-2">
				<!-- 侧边悬浮框 -->
				<%@ include file="/WEB-INF/page/common/left_common.jsp"%>
				</div>
				
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
					<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 two">
							<div id="myCarousel" class="carousel slide"  data-interval="2000">
								<ol class="carousel-indicators" >
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
									<li data-target="#myCarousel" data-slide-to="3" ></li>
									<li data-target="#myCarousel" data-slide-to="4"></li>
									<li data-target="#myCarousel" data-slide-to="5"></li>
								</ol>
							<div class="carousel-inner" id="searchHistoryinfor">
								<div  class="row item active" >
								  <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4">
                                    <img id="img" src="http://img3.doubanio.com/mpic/s27874510.jpg" />
                                  </div>
								  <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4" >
                                  	<span>你配得起更好</span><br>
                                  	<span>Running 著</span><br>
                                  	</br>
                                  	<span>简介</span><br>
									<p class="ip td_ellipsis">本书诠释了家庭理财的深刻内涵。全书围绕家庭理财主题，站在普通投资者的视角，以“理财平常心——冷眼观市——财富‘利’器——认识理财师”为框架。</p>
								  </div>                          
								</div>
							</div>
							<a href="#myCarousel" data-slide="prev" class="carousel-control left">
							<span ><img src="<%=basePath%>/style/ibooks/img/后退.png" class="im2"></span>
							</a>
							<a href="#myCarousel" data-slide="next" class="carousel-control right">
							<span ><img src="<%=basePath%>/style/ibooks/img/前进.png" class="im2"></span>
							</a>
							</div>
                          </div>
						</div>
					<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
					<div class="col-xs-6 col-sm-5 col-md-4 col-lg-4 t2">				
						<div class="row xh">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<img src="<%=basePath%>/style/ibooks/img/公告.png" class="imm"><b class="f1">共益公告</b><small class="gd"><a href="${pageContext.request.contextPath}/l_system/frontpages/page/reportpageview">更多</a></small>
							</div>
						</div>
							<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<ol>
							<li id="sj1"><a href="#">图书馆2017年流动图书馆服务</a></li>
							<li id="sj1"><a href="#">图书馆2017年流动图书馆服务</a></li>
							<li id="sj1"><a href="#">图书馆2017年流动图书馆服务</a></li>
							</ol>
						</div>
					</div>	
					</div>	
					<div class="col-xs-6 col-sm-5 col-sm-push-2 col-md-4 col-md-push-0 col-lg-4 t2">			
					<div class="row xh">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<img src="<%=basePath%>/style/ibooks/img/新闻报道.png" class="imm"><b class="f1">热点报道</b><small class="gd"><a href="${pageContext.request.contextPath}/l_system/frontpages/page/noticepageview">更多</a></small>
							</div>
						</div>
						<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<ol>
							<li id="sj2"><a href="${pageContext.request.contextPath}/l_system/addpage/reported">图书馆2017公告（或报道）题目</a></li>
							<li id="sj2"><a href="${pageContext.request.contextPath}/l_system/addpage/reported">图书馆2017公告（或报道）题目</a></li>
							<li id="sj2"><a href="${pageContext.request.contextPath}/l_system/addpage/reported">图书馆2017公告（或报道）题目</a></li>
							</ol>
						</div>
						</div>		
				</div>
				<div class="col-xs-12 col-sm-12 col-md-3 col-md-offset-1 col-lg-3 t22">
				<div class="row xh">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<img src="<%=basePath%>/style/ibooks/img/合作.png" class="imm"><b class="f1">共益合作</b><small class="gd"><a href="${pageContext.request.contextPath}/l_system/frontpages/page/reportpageview">更多</a></small>
					</div>
				</div>
				<div class="row">
						<div class="col-xs-6 col-sm-3 col-md-6 col-lg-6">
							<a href="${pageContext.request.contextPath}/l_system/addpage/advertisement"><img src="<%=basePath%>/style/ibooks/img/广告.png" class="im1">
							<span class="f21">广告投放</span><p><b class="f31">广告投放</b></p></a>
						</div>
						<div class="col-xs-6 col-sm-3 col-md-6 col-lg-6">
							<a href="#"><img src="<%=basePath%>/style/ibooks/img/合作.png" class="im1">
							<span class="f21">产品合作</span><p><b class="f31">产品合作</b></p></a>
						</div>
						<div class="col-xs-6 col-sm-3 col-md-6 col-lg-6">
							<a href="${pageContext.request.contextPath}/l_system/addpage/join"><img src="<%=basePath%>/style/ibooks/img/加入.png" class="im1">
							<span class="f21">加入我们</span><p><b class="f31">加入我们</b></p></a>
						</div>
						<div class="col-xs-6 col-sm-3 col-md-6 col-lg-6">
							<a href="#"><img src="<%=basePath%>/style/ibooks/img/联系.png" class="im1">
							<span class="f21">联系我们</span><p><b class="f31">联系我们</b></p></a>
						</div>
					</div>
			</div>
			
			</div>
			</div>
			</div>
			</div>
			</div>
		</div>
				
		<div class="section section-3" >
			<nav class="navbar navbar-default">
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>			
			</nav>
					
			<div class="container-fluid">
				<div class="row">
				<div class="a6 col-md-2">
				<!-- 主页左边悬浮框 -->
				<%@ include file="/WEB-INF/page/common/left_common.jsp"%>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 t3" style="table-layout:fixed;width: 100%;">
						<div class="row xh">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<img src="<%=basePath%>/style/ibooks/img/图书 (1).png" class="imm"><b class="f1">新书推荐</b><a href="${pageContext.request.contextPath}/l_system/frontpages/page/newbookpageview">
							<small style="float: right;"><a href="${pageContext.request.contextPath}/l_system/frontpages/page/newbookpageview" class="gd">更多</small></a>
						</div>
						</div>
						<div class="row" id="new_book_table">
											
						</div>	
						<script type="text/javascript">
							$(function() {
								$.ajax({
									url:'<c:url value="/l_system/books/find"/>',
									method: 'get',
									data:{pageSize: 6},
									dataType: 'json',
									success:function(json){
										$.each( json, function(i, iten){
											$("#new_book_table ").append("<div class='col-xs-2 col-sm-2 col-md-2 col-lg-2'><a href='/ibook/l_system/lendbookpages/page/lendbookpageview?bookId="+iten.bookId+"'>"
											+"<img src='"+iten.img+"' class='im3 imgstyle img-responsive' />"
											+"<p  class='text3 td_ellipsis lineword' title='"+iten.bookTitl+"'>"+iten.bookTitl+"</p></a></div>");
										});
									}
								});
							})
						</script>
						</div>
						</div>
						
					
				<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 t3" style="table-layout:fixed;width: 100%;">
						<div class="row xh">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">	
							<img src="<%=basePath%>/style/ibooks/img/最爱单品.png" class="imm"><b class="f1">猜你喜欢</b>
							<small style="float: right;"><a href="#" class="gd">更多</small></a>	
							</div>
						</div>
						<div id="like_book_table" class="row">
							
						</div>
						<script type="text/javascript">
							$(function() {
								$.ajax({
									url:'<c:url value="/l_system/books/find"/>',
									method: 'get',
									data:{pageSize: 8},
									dataType: 'json',
									/* success:function(json){
										var j=1;
										$.each( json, function(i, iten){
											console.log("i:"+i);
											if(i!=0&&i%2==0){
												console.log("j:"+j);
												j++;
											}
											$("#like_book_table tr:eq("+j+")").append("<td class='f4' class='td_ellipsis lineword'  title='"+iten.bookTitl+"'><span><img src='"+iten.img+"' class='imm1'>"+"<a href='/ibook/l_system/lendbookpages/page/lendbookpageview?bookId="+iten.bookId+"' class='td_ellipsis lineword'><p class='td_ellipsis' >"+iten.bookTitl+"</p></a></span></td>");
										});
									} */
									success:function(json){
										$.each( json, function(i, iten){
											$("#like_book_table ").append("<div class='col-xs-3 col-sm-3 col-md-3 col-lg-3'><a  class='f4' href='/ibook/l_system/lendbookpages/page/lendbookpageview?bookId="+iten.bookId+"'>"
											+"<img src='"+iten.img+"' class='imm1' />"
											+"<p  class='td_ellipsis lineword' title='"+iten.bookTitl+"'>"+iten.bookTitl+"</p></a></div>");
										});
									}
								});
							})
						</script>
						
						</div>
						</div>
						</div>
					<div class="col-xs-12 col-sm-12 col-md-5 col-md-offset-1 col-lg-5 col-lg-offset-1">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 t3" style="table-layout:fixed;width: 100%;">
							<div class="row xh">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<img src="<%=basePath%>/style/ibooks/img/图书 (1).png" class="imm"><b class="f1">借阅排行榜</b>
								<small style="float: right;"><a href="#" class="gd">更多</small></a>
							</div>
							</div>
							<div>
								<ol id="bookLendRecommend">
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
				</div>
				</div>
			</div>
		</div>
						
		<div class="section section-4" >
			<nav class="navbar navbar-default">
			<!-- 导入导航栏内容 -->
			<%@ include file="/WEB-INF/page/common/index_common.jsp"%>		
			</nav>
			<div class="container-fluid">
				<div class="row">
				<div class="a6 col-md-2">
				<!-- 主页左边悬浮框 -->
				<%@ include file="/WEB-INF/page/common/left_common.jsp"%>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 t3">
					<div class="row" style="padding-bottom:3%;">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="row xh">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<img src="<%=basePath%>/style/ibooks/img/资源 97.png" class="imm"><b class="f1">数字资源</b>
								</div>
							</div>
							<div class="row g1">								
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><button class="btn btn-default im4 active sl" onClick="window.location.href='${pageContext.request.contextPath}/l_system/addpage/resource'">编程语言</button></div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><button class="btn btn-default im4 sl" onClick="window.location.href='${pageContext.request.contextPath}/l_system/addpage/resource'">电子信息硬件</button></div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><button class="btn btn-default im4 sl" onClick="window.location.href='${pageContext.request.contextPath}/l_system/addpage/resource'">大数据</button></div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><button class="btn btn-default im4 sl" onClick="window.location.href='${pageContext.request.contextPath}/l_system/addpage/resource'">其它PDF</button></div>								
							</div>
							<div class="row g1">
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="人工智能" class="btn btn-default im4 sl"></div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="网络技术" class="btn btn-default im4 sl"></div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="区块链" class="btn btn-default im4 sl"></div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3"><input type="button" value="其它..." class="btn btn-default im4 sl"></div>
							</div>
						</div>
					</div>
							
				</div>
				
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 t3">
					<div class="row" style="padding-bottom:3%;">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<div class="row xh">
								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<img src="<%=basePath%>/style/ibooks/img/排行榜.png" class="imm"><b class="f1">飙升排行榜</b>
								</div>
							</div>
							<div class="row">								
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
										<img src="<%=basePath%>/style/ibooks/img/1change.jpg" class="imm7">
										<p class="text3 td_ellipsis lineword">书名</p>
									</div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
										<img src="<%=basePath%>/style/ibooks/img/1change.jpg" class="imm7">
										<p class="text3 td_ellipsis lineword">书名</p>
									</div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
										<img src="<%=basePath%>/style/ibooks/img/1change.jpg" class="imm7">
										<p class="text3 td_ellipsis lineword">书名</p>
									</div>
									<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
										<img src="<%=basePath%>/style/ibooks/img/1change.jpg" class="imm7">
										<p class="text3 td_ellipsis lineword">书名</p>
									</div>								
							</div>
							
						</div>
					</div>
							
				</div>
				</div>
			</div>
		</div>
	</section>
	
	<ul class="section-btn bt1">
	  <li class="on"></li>
	  <li></li>
	  <li></li>
	  <li></li>
<!-- 	  <li></li> -->
	</ul>
	<div class="arrow">&laquo;</div> 



<script type="text/javascript">
	//此处引用：鼠标滚轮mousewheel插件
	!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):"object"==typeof exports?module.exports=a:a(jQuery)}(function(a){function b(b){var g=b||window.event,h=i.call(arguments,1),j=0,l=0,m=0,n=0,o=0,p=0;if(b=a.event.fix(g),b.type="mousewheel","detail"in g&&(m=-1*g.detail),"wheelDelta"in g&&(m=g.wheelDelta),"wheelDeltaY"in g&&(m=g.wheelDeltaY),"wheelDeltaX"in g&&(l=-1*g.wheelDeltaX),"axis"in g&&g.axis===g.HORIZONTAL_AXIS&&(l=-1*m,m=0),j=0===m?l:m,"deltaY"in g&&(m=-1*g.deltaY,j=m),"deltaX"in g&&(l=g.deltaX,0===m&&(j=-1*l)),0!==m||0!==l){if(1===g.deltaMode){var q=a.data(this,"mousewheel-line-height");j*=q,m*=q,l*=q}else if(2===g.deltaMode){var r=a.data(this,"mousewheel-page-height");j*=r,m*=r,l*=r}if(n=Math.max(Math.abs(m),Math.abs(l)),(!f||f>n)&&(f=n,d(g,n)&&(f/=40)),d(g,n)&&(j/=40,l/=40,m/=40),j=Math[j>=1?"floor":"ceil"](j/f),l=Math[l>=1?"floor":"ceil"](l/f),m=Math[m>=1?"floor":"ceil"](m/f),k.settings.normalizeOffset&&this.getBoundingClientRect){var s=this.getBoundingClientRect();o=b.clientX-s.left,p=b.clientY-s.top}return b.deltaX=l,b.deltaY=m,b.deltaFactor=f,b.offsetX=o,b.offsetY=p,b.deltaMode=0,h.unshift(b,j,l,m),e&&clearTimeout(e),e=setTimeout(c,200),(a.event.dispatch||a.event.handle).apply(this,h)}}function c(){f=null}function d(a,b){return k.settings.adjustOldDeltas&&"mousewheel"===a.type&&b%120===0}var e,f,g=["wheel","mousewheel","DOMMouseScroll","MozMousePixelScroll"],h="onwheel"in document||document.documentMode>=9?["wheel"]:["mousewheel","DomMouseScroll","MozMousePixelScroll"],i=Array.prototype.slice;if(a.event.fixHooks)for(var j=g.length;j;)a.event.fixHooks[g[--j]]=a.event.mouseHooks;var k=a.event.special.mousewheel={version:"3.1.12",setup:function(){if(this.addEventListener)for(var c=h.length;c;)this.addEventListener(h[--c],b,!1);else this.onmousewheel=b;a.data(this,"mousewheel-line-height",k.getLineHeight(this)),a.data(this,"mousewheel-page-height",k.getPageHeight(this))},teardown:function(){if(this.removeEventListener)for(var c=h.length;c;)this.removeEventListener(h[--c],b,!1);else this.onmousewheel=null;a.removeData(this,"mousewheel-line-height"),a.removeData(this,"mousewheel-page-height")},getLineHeight:function(b){var c=a(b),d=c["offsetParent"in a.fn?"offsetParent":"parent"]();return d.length||(d=a("body")),parseInt(d.css("fontSize"),10)||parseInt(c.css("fontSize"),10)||16},getPageHeight:function(b){return a(b).height()},settings:{adjustOldDeltas:!0,normalizeOffset:!0}};a.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})});
	
	$(function(){
		var i=0;
		var $btn = $('.section-btn li'),
			$wrap = $('.section-wrap'),
			$arrow = $('.arrow');
		
		/*当前页面赋值*/
		function up(){i++;if(i==$btn.length){i=0};}
		function down(){i--;if(i<0){i=$btn.length-1};}
		
		/*页面滑动*/
		function run(){
			$btn.eq(i).addClass('on').siblings().removeClass('on');	
			$wrap.attr("class","section-wrap").addClass(function() { return "put-section-"+i; }).find('.section').eq(i).find('.title').addClass('active');
		};
		
		/*右侧按钮点击*/
		$btn.each(function(index) {
			$(this).click(function(){
				i=index;
				run();
			})
		});
		
		/*翻页按钮点击*/
		$arrow.one('click',go);
		function go(){
			up();run();	
			setTimeout(function(){$arrow.one('click',go)},1000)
		};
		
		/*响应鼠标*/
		$wrap.one('mousewheel',mouse_);
		function mouse_(event){
			if(event.deltaY<0) {up()}
			else{down()}
			run();
			setTimeout(function(){$wrap.one('mousewheel',mouse_)},1000)
		};
		
		/*响应键盘上下键*/
		$(document).one('keydown',k);
		function k(event){
			var e=event||window.event;
			var key=e.keyCode||e.which||e.charCode;
			switch(key)	{
				case 38: down();run();	
				break;
				case 40: up();run();	
				break;
			};
			setTimeout(function(){$(document).one('keydown',k)},1000);
		}
	});
</script>
<script type="text/javascript">
	//轮播自动播放
	$('#myCarousel').carousel({
		//自动4秒播放
		interval : 4000,
	});

	//设置文字垂直居中，谷歌浏览器加载图片的顺序问题，导致高度无法获取
	$(window).load(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});
	

	$(window).resize(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});

	$(window).load(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

	$(window).resize(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

</script>

<script src="<%=basePath%>/style/ibooks/js/books/books_keyword_search.js"></script>

</body>
</html>