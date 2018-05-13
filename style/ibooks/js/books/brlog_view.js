//$last:最后一页
var $last;
//$rows：页显示条数，默认为5
var $rows=5;
//$page：显示第几页，默认为1
var $page=1;
//$total:查询出来的总条数
var $total;
var $book_number="";
var $state;
//页面加载时默认显示
window.onload=function(){
	//页面加载，全选框默认没有选中
	$("#check_all").prop("checked",false);
	//页面加载，默认显示5条
	$("select").val($rows);
	//页面加载默认第一页
	$("#page").val($page);
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
		url:'/ibook/l_system/lendbookpages/bookLendInfoList',
		data: "page="+$page+"&rows="+$rows,
		success:function(data){
		//页面显示数据总条数
		$total=JSON.stringify(data.total);
		$("#total").text($total);
		//显示共有几页，用到取整函数Math.ceil()
		$last=Math.ceil(JSON.stringify(data.total)/$rows);
		$("#showPage").text($last);
		$.each(data.returnRows,function(index, item){
			//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
			var $returnTime=format(item.return_time);
			var $borrowTime=format(item.borrow_time);
			
 			switch(item.book_lend_state){
 			    case (-1): $state="预约"; break;
				case (0): $state="借阅"; break;
				case (1): $state="已还"; break;
				defualt: $state="异常";break;
			}
			
			
			
		    $("#readers_list tbody").append(
		    '<tr><td class="recordId"  class="td_ellipsis">'+item.reader_id+'</td>'+
            '<td >'+item.book_number+'</td>'+
            '<td class="td_ellipsis">'+item.book_titl+'</td>'+
            '<td class="td_ellipsis">'+$borrowTime+'</td>'+
            '<td class="td_ellipsis"  title="'+$returnTime+'">'+$returnTime+'</td>'+
            '<td class="td_ellipsis"  title="'+item.bookLendState+'">'+$state+'</td>'+
            '<td class="td_ellipsis" title="'+item.fines+'">'+item.fines+'</td>'+
            '<td>'+
       			'<div class="am-btn-group am-btn-group-xs">'+
         		 	'<button class=" am-btn-xs am-text-secondary am-round " data-toggle="modal" data-target="#myModal2" data-backdrop="static" title="编辑" onclick="findBookLendById('+item.book_lend_id+')" ><span class="am-icon-pencil-square-o"></span></button>'+
          			'<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"    onclick="getDeleteLendId('+item.book_lend_id+')"><span class="am-icon-trash-o" ></span></button>'+
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
$("#searchLend").click(function(){
	$reader_id=$("#reader_id").val();
	$book_number=$("#book_number").val();
	$.ajax({
		type:'post',
		url:'/ibook/l_system/lendbookpages/bookLendInfoList',
		data: "page="+$page+"&rows="+$rows+"&reader_id="+$reader_id+"&book_number="+$book_number,
		success:function(data){
		//页面显示数据总条数
		$total=JSON.stringify(data.total);
		$("#total").text($total);
		//显示共有几页，用到取整函数Math.ceil()
		$last=Math.ceil(JSON.stringify(data.total)/$rows);
		$("#showPage").text($last);
		$.each(data.returnRows,function(index, item){
			//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
			var $returnTime=format(item.return_time);
			var $borrowTime=format(item.borrow_time);
 			switch(item.book_lend_state){
			    case (-1): $state="预约"; break;
				case (0): $state="借阅"; break;
				case (1): $state="已还"; break;
				defualt: $state="异常";break;
		    }
		    $("#readers_list tbody").append(
		    '<tr><td class="recordId"  class="td_ellipsis">'+item.reader_id+'</td>'+
            '<td >'+item.book_number+'</td>'+
            '<td class="td_ellipsis">'+item.book_titl+'</td>'+
            '<td class="td_ellipsis">'+$borrowTime+'</td>'+
            '<td class="td_ellipsis"  title="'+$returnTime+'">'+$returnTime+'</td>'+
            '<td class="td_ellipsis"  title="'+item.bookLendState+'">'+$state+'</td>'+
            '<td class="td_ellipsis" title="'+item.fines+'">'+item.fines+'</td>'+
            '<td>'+
       			'<div class="am-btn-group am-btn-group-xs">'+
         		 	'<button class=" am-btn-xs am-text-secondary am-round " data-toggle="modal" data-target="#myModal2" data-backdrop="static" title="编辑" onclick="findBookLendById('+item.book_lend_id+')" ><span class="am-icon-pencil-square-o"></span></button>'+
          			'<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"    onclick="getDeleteLendId('+item.book_lend_id+')"><span class="am-icon-trash-o" ></span></button>'+
        		'</div>'+
			'</td></tr>');			
	   });
		}});
	//清空一下
	$("table tbody").empty();
	//获取显示页
	$page=$("#page").val();
});



//刷新
$("#flush").click(function(){
	window.location.reload()
});


//给隐藏id赋值,onclick="findBookLendById(动态参数值)"
function findBookLendById( id){
     	$.ajax({
     		type:'post',
     		url:'/ibook/l_system/lendbookpages/lendinfor',
     		data: "bookLendId="+id,
     		success:function(data){
     			$("#myModal2_bookLendId").val(data.lendinfor.bookId);
     			$("#myModal2_readerId").val(data.lendinfor.readerId);
     			$("#myModal2_bookNumber").val(data.lendinfor.bookNumber);
     			$("#myModal2_fines").val(data.lendinfor.fines);
     			switch(data.lendinfor.bookLendState){
     				case (0): $("#lend").attr('checked', 'true'); break;
     				case (1): $("#return").attr('checked', 'true'); break;
     				defualt: break;
     			}
     	    }
     	});
     }

//修改借阅信息
$("#editSubmit").click(function(){
	var data=$("#infoEdit").serialize();
	data = decodeURIComponent(data,true);
	$.ajax({
	type:'post',
	url:'/ibook/l_system/lendbookpages/updatelendinfor',
	data: data,
	success:function(data){
		if(data.message=="成功修改"){
			show();
		}
	}
	});
});

//删除单条借阅记录(状态更新)
var $deleteId=0;
function getDeleteLendId(id){
  	var val=id;
  	$("#deleteId").val(val);
}
$("#deleteBton").click(function(){
	$deleteId=$("#deleteId").val();
	$.ajax({
		type:'post',
		url:'/ibook/l_system/lendbookpages/deletelendinfor',
		data: "lendId="+$deleteId,
		success:function(data){
			if(data.message=="成功删除"){
				show();
			}
		}
		});
});




