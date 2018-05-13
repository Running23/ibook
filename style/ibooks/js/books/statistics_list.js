//查询条件
var $keyWord;
var $isbn=" ";
//$last:最后一页
var $last;
//$rows：页显示条数，默认为5
var $rows=5;
//$page：显示第几页，默认为1
var $page=1;
//$total:查询出来的总条数
var $total=0;

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
$("#searchByBookName").click(
		function searchByBookName(){
			$isbn=$("#ISBN").val();
			show();
		}
);


	 
	 
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


//$selA:定义变量,0：不选中;1：全选中
var $selA=0;
//选中与不选中
$("#check_all").click(
	 function () {
		 if($selA==0){
	 	 $selA=1;
	 	 show();
	}else{
	 	 $selA=0;
	 	 $sel_a=[];//清空数组
	 	 show();
		 }
	 });

//定义一个变量用于存储选中复选框的值
var $sel_a=[];
//部分选择,翻页同样可以显示,选中时插入，取消时去除
$(document).on("click",".click_checkbox",function(){
      var $v=$(this).val();
//       var $attr=$(this).attr("checked");
//       alert($attr);
         if ($.inArray($v,$sel_a)==-1){
        	    //alert($v);
                $sel_a.push($v);
                if($sel_a.length==$total){
                	$("#check_all").prop("checked",true);	
                }
            }else{
                for(var i=0;i<=$sel_a.length-1;i++){
                    if($sel_a[i]==$v){
                    	//alert($v);
                        $sel_a.splice(i,1);
                        $selA=0
                        $("#check_all").prop("checked",false);
                    }
                }
            }
    
});




//异步加载数据列表

function pageJson(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/Statistics/statisticsList/view',
		data: "page="+$page+"&rows="+$rows+"&bookTitl="+$keyWord+"&bookNumber="+$isbn,
		success:function(data){
		//页面显示数据总条数
		$total=JSON.stringify(data.total);
		$("#total").text($total);
		//显示共有几页，用到取整函数Math.ceil()
		$last=Math.ceil(JSON.stringify(data.total)/$rows);
		$("#showPage").text($last);
		$.each(data.returnRows,function(index, item){
			//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
			//var $publicationDate=format(item.publicationDate);
		    $("#readers_list tbody").append(
		    '<tr><td class="recordId"  class="td_ellipsis">'+item.bookId+'</td>'+
            '<td class="td_ellipsis">'+item.bookTitl+'</td>'+
            '<td class="td_ellipsis">'+item.author+'</td>'+
            '<td class="td_ellipsis">'+item.serchtime+'</td>'+
            '<td class="td_ellipsis">4</td>'+
            '<td class="td_ellipsis">'+item.lendtime+'</td>'+
            '<td class="td_ellipsis" title=""点击阅览"">'+'<a href="/ibook/l_system/books/bookinfor/view?code='+item.bookNumber+'&bookTitl='+item.bookTitl+'">'+"点击阅览"+'</a>'+'</td>'+
            +'</tr>');			
	   });		
	 }
	});
}

//刷新
$("#flush").click(function(){
	window.location.reload()
});
























