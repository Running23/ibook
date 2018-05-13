//查询条件
var $keyWord;
//$last:最后一页
var $last;
//$rows：页显示条数，默认为5
var $rows=5;
//$page：显示第几页，默认为1
var $page=1;
//$total:查询出来的总条数
var $total=0;
var $searchByKeyWord="";
var $booknum="";
var $bookauthor="";
//页面加载时默认显示
window.onload=function(){
	//页面加载，全选框默认没有选中
	$("#check_all").prop("checked",false);
	//页面加载，默认显示5条
	$("select").val($rows);
	//页面加载默认第一页
	$("#page").val($page);
	//加载模糊查询关键字
	//$("#mytext").val("");
	$keyWord=$("#mytext").val();
	show();
	
	 };
	 
//选择页显示条数
function selectOption(){
 //页面加载默认第一页
 $page=1;
 $("#page").val($page);
 //获取被选中的option标签
 $rows= $('select option:selected').val();
 show();
}

//页数改变，加载数据
$("#page").change( function() {
	show();
	});
	
//下一页上一页，第一页最后一页
function move(status){
    switch (status) {
    case (1):
        $page=parseInt($page)+1;
    	if($page<=$last){
    	$("#page").val($page);
    	$page=$("#page").val();
    	show();
    	}else{
	    	$("#page").val($last);
	    	$page=$("#page").val();
    		alert("当前页为最后一页");
    	}
    	break;
    case (-1):
        $page=parseInt($page)-1;
    	if($page>=1){
		$("#page").val($page);
		$page=$("#page").val();
		show();
    	}else{
			$("#page").val(1);
			$page=$("#page").val();
    		alert("当前页为第1页");
    	}
        break;
    case (-2):
        $page=1;
		$("#page").val($page);
		$page=$("#page").val();
		show();
        break;
    case (2):
        $page=$last;
		$("#page").val($page);
		$page=$("#page").val();
		show();
        break;
    default:
        $page=1;
		$("#page").val($page);
		$page=$("#page").val();
		show();
    }
}
//多条件查询
$("#search").click(function(){
	$booknum=$("#booknum").val();
	$bookauthor=$("#bookauthor").val();
	show();
});
 
//获取数据显示数据
function show(){
	//清空一下
	$("table tbody").empty();
	//获取显示页
	$page=$("#page").val();
	pageJson();	
}

//异步加载数据列表
function pageJson(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/books/bookList',
		data: "page="+$page+"&rows="+$rows+"&bookTitl="+$keyWord+"&keyWord="+$searchByKeyWord+"&author="+$bookauthor+"&bookNumber="+$booknum,
		success:function(data){
		//页面显示数据总条数
		$total=JSON.stringify(data.total);
		$("#total").text($total);
		//显示共有几页，用到取整函数Math.ceil()
		$last=Math.ceil(JSON.stringify(data.total)/$rows);
		$("#showPage").text($last);
		$.each(data.returnRows,function(index, item){
			//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
			var $publicationDate=format(item.publicationDate);
		    $("#readers_list tbody").append(
		    '<tr><td class="recordId"  class="td_ellipsis">'+item.bookNumber+'</td>'+
            '<td class="td_ellipsis">'+item.bookTitl+'</td>'+
            '<td class="td_ellipsis">'+item.author+'</td>'+
            '<td class="td_ellipsis">'+item.publishingHouse+'</td>'+
            '<td class="td_ellipsis"  title="'+$publicationDate+'">'+$publicationDate+'</td>'+
            '<td class="td_ellipsis"  title="'+item.bookId+'">'+item.bookId+'</td>'+
            '<td class="td_ellipsis" title=""点击阅览"">'+'<a href="/ibook/l_system/books/bookinfor/view?code='+item.bookNumber+'&bookTitl='+item.bookTitl+'&bookTypes='+item.bookTypes+'">'+"点击阅览"+'</a>'+'</td>'+
            '<td>'+
       			'<div class="am-btn-group am-btn-group-xs">'+
         		 	'<button class=" am-btn-xs am-text-secondary am-round " data-toggle="modal" data-target="#myModal2" data-backdrop="static" title="编辑" onclick="findBookById('+item.bookId+')" ><span class="am-icon-pencil-square-o"></span></button>'+
          			'<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"    onclick="getDeletebBookId('+item.bookId+')"><span class="am-icon-trash-o" ></span></button>'+
        		'</div>'+
			'</td></tr>');			
	   });		
	   //后台加载数据,将选中的复选框状态显示出来    
		$(".click_checkbox").each(function(){
		   var $v=$(this).val();
		   if ($.inArray($v,$sel_a)!=-1){
		         $(this).prop("checked",true);
		          }
		    });
	   //后台成功加载数据后,判断是否选中框全选中
	   $(".click_checkbox").each(function(){
		   var $v=$(this).val();
		   if($selA==1){
			   $(this).prop("checked",true);
		       if ($.inArray($v,$sel_a)==-1){
		            $sel_a.push($v);
		       }
		   }
	   });
	 }
	});
}


//刷新
$("#flush").click(function(){
	window.location.reload();
});

//回车键搜索
$('#searchByKeyWord').bind('keypress', function (event) {
	if (event.keyCode == "13") { 
	$searchByKeyWord=$('#searchByKeyWord').val();
	}
	show();
   });

//<!--批量删除,没有真正从数据库删除-->
     $('#deleteAll').click(function(){
    	 arrayJson();
    	 show();
     });
//给隐藏id赋值,onclick="findBookById(动态参数值)"
function findBookById( id){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/bookreack/find',
		data: "bookId="+id,
		success:function(data){
			$("#myModal2_bookId").val(data.book.bookId);
			$("#myModal2_bookTitl").val(data.book.bookTitl);
			$("#myModal2_bookNumber").val(data.book.bookNumber);
			$("#myModal2_author").val(data.book.author);
			$("#myModal2_publishingHouse").val(data.book.publishingHouse);
			$("#myModal2_bookTypes").val(data.book.bookTypes);
			$("#myModal2_blurb").val(data.book.blurb);
	    }
	});
	
	
}

//修改书籍信息
$("#editSubmit").click(function(){
	var data=$("#bookInfoEdit").serialize();
	data = decodeURIComponent(data,true);
	$.ajax({
	type:'post',
	url:'/ibook/l_system/bookreack/update',
	data: data,
	success:function(data){
		if(data.message=="成功修改"){
			show();
		}
	}
	});
});


//删除单条读者记录(状态更新)
var $deleteId=0;
function getDeletebBookId(id){
  	var val=id;
  	$("#deleteId").val(val);
}
$("#deleteBton").click(function(){
	$deleteId=$("#deleteId").val();
	$.ajax({
		type:'post',
		url:'/ibook/l_system/bookreack/delete',
		data: "bookId="+$deleteId,
		success:function(data){
			if(data.message=="成功删除"){
				show();
			}
		}
		});
});





//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
function add0(m){return m<10?'0'+m:m }
function format(shijianchuo)
{
//shijianchuo是整数，否则要parseInt转换
var time = new Date(shijianchuo);
var y = time.getFullYear();
var m = time.getMonth()+1;
var d = time.getDate();
var h = time.getHours();
var mm = time.getMinutes();
var s = time.getSeconds();
return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}
