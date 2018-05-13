<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 标签导入 -->
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<title>借还情况</title>
<link href="<%=basePath%>/style/assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="<%=basePath%>/style/assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/assets/css/zabuto_calendar.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/assets/js/gritter/css/jquery.gritter.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/style/assets/lineicons/style.css">

<link href="<%=basePath%>/style/assets/css/style.css" rel="stylesheet">
<link href="<%=basePath%>/style/assets/css/style-responsive.css" rel="stylesheet">

<script src="<%=basePath%>/style/assets/js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath%>/style/assets/js/chart-master/Chart.js"></script>
<style>
    body {
        background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);
    }
</style>
</head>
<body>
	<!-- 导入头部 -->
	<%@ include file="/WEB-INF/page/common/header.jsp"%>
	<!-- 导入菜单 -->
	<%@ include file="/WEB-INF/page/common/menus.jsp"%>
	
	<!-- **********************************************************************************************************************************************************
	MAIN CONTENT
	*********************************************************************************************************************************************************** -->
	<!--main content start-->
	<section id="main-content">
	    <section style="background-image: url(<%=basePath%>/style/ibooks/img/5.jpg);">
	        <p style="float: left;padding: 70px 0 0 10px;font-size: 15px;"><b><a href="${pageContext.request.contextPath}/l_system/librarian/view">首页 </a>>>图书借还记录</b></p>
	        <nav style="height: 35px;background-color: #FFEBBB;width: 100%;padding-top: 100px;">
	
	        </nav>
	
	        <div class="search-box" style="text-align: right;padding-top: 10px;font-size: 14px;padding-right: 10px;">
	
	            <form>
	                <select>
	                    <option value="volvo">书籍类型</option>
	                    <option value="saab">文学类</option>
	                    <option value="opel">工程类</option>
	                    <option value="audi">生物类</option>
	                </select>
	
	                <input type="text" placeholder="Search..." required="">
	                <button class="btn-default navbar-btn " style="background-color: #ffd777;">搜索</button>
	            </form>
	        </div>
	
	
	    </section>
	    <div class="card-content">
	        <div style="width: 100%;padding: 5px 10px 0 10px ;overflow-x:scroll;">
	            <div class="table-responsive" style="background-color: #F8F1E5;">
	                <img src="<%=basePath%>/style/ibooks/img/6.jpg" style="float: left;height: 60px;">
	
	                <h3 style="padding-left: 30px;padding-top: 15px;padding-bottom: 25px;">图书借还记录</h3>
	                <table class="table table-hover sortable" id="table">
	                    <thead>
	                    <tr>
	                        <th>书籍名称</th>
	                        <th>书籍类型</th>
	                        <th>书籍编号</th>
	                        <th>借阅时间</th>
	                        <th>归还时间</th>
	                        <th>拖欠时间</th>
	                        <th>罚款金额</th>
	                        <th>信用值</th>
	                    </tr>
	                    </thead>
	                    <tbody>
	                    <tr>
	                        <td>1111111</td>
	                        <td>222222</td>
	                        <td>3121313</td>
	                        <td>415465</td>
	                        <td>551531</td>
	                        <td>6dfdsf</td>
	                        <td>7fdfs</td>
	                        <td>8cvxcvx</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	                    <tr>
	                        <td>1</td>
	                        <td>2</td>
	                        <td>3</td>
	                        <td>4</td>
	                        <td>5</td>
	                        <td>6</td>
	                        <td>7</td>
	                        <td>8</td>
	
	                    </tr>
	
	                    </tbody>
	                </table>
	                <div id="controls">
	                    <div id="perpage" style="float: left;">
	                        <select onchange="sorter.size(this.value)">
	                            <option value="5">5</option>
	                            <option value="10" selected="selected">10</option>
	                            <option value="20">20</option>
	                            <option value="50">50</option>
	                            <option value="100">100</option>
	                        </select>
	
	                    </div>
	                    <div id="navigation" style="float: left;">
	                        <img src="<%=basePath%>/style/ibooks/img/first.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1,true)"/>
	                        <img src="<%=basePath%>/style/ibooks/img/previous.gif" width="16" height="16" alt="First Page" onclick="sorter.move(-1)"/>
	                        <img src="<%=basePath%>/style/ibooks/img/next.gif" width="16" height="16" alt="First Page" onclick="sorter.move(1)"/>
	                        <img src="<%=basePath%>/style/ibooks/img/last.gif" width="16" height="16" alt="Last Page" onclick="sorter.move(1,true)"/>
	                    </div>
	                    <div id="text" style="float: right;">当前页面<span id="currentpage"/></div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<footer><p style="float: right;"><img src="<%=basePath%>/style/ibooks/img/8.jpg"></p></footer>
</body>
<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=basePath%>/style/assets/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="<%=basePath%>/style/assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="<%=basePath%>/style/assets/js/jquery.scrollTo.min.js"></script>
<script src="<%=basePath%>/style/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="<%=basePath%>/style/assets/js/jquery.sparkline.js"></script>


<!--common script for all pages-->
<script src="<%=basePath%>/style/assets/js/common-scripts.js"></script>

<script type="text/javascript" src="<%=basePath%>/style/assets/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="<%=basePath%>/style/assets/js/gritter-conf.js"></script>

<!--script for this page-->
<script src="<%=basePath%>/style/assets/js/sparkline-chart.js"></script>
<script src="<%=basePath%>/style/assets/js/zabuto_calendar.js"></script>
<script type="text/javascript" src="<%=basePath%>/style/ibooks/js/jquery/table/script.js"></script>

<script type="application/javascript">
    $(document).ready(function () {
        $("#date-popover").popover({html: true, trigger: "manual"});
        $("#date-popover").hide();
        $("#date-popover").click(function (e) {
            $(this).hide();
        });

        $("#my-calendar").zabuto_calendar({
            action: function () {
                return myDateFunction(this.id, false);
            },
            action_nav: function () {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [
                {type: "text", label: "Special event", badge: "00"},
                {type: "block", label: "Regular event" }
            ]
        });
    });


    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>
<script type="text/javascript">
    var sorter = new TINY.table.sorter("sorter");
    sorter.head = "head";
    sorter.asc = "asc";
    sorter.desc = "desc";
    sorter.even = "evenrow";
    sorter.odd = "oddrow";
    sorter.evensel = "evenselected";
    sorter.oddsel = "oddselected";
    sorter.paginate = true;
    sorter.currentid = "currentpage";
    /*sorter.limitid = "pagelimit";*/
    sorter.init("table", 1);
</script>
</html>