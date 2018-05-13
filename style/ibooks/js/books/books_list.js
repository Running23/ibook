//查询条件
var $keyWord;
//$last:最后一页
var $last;
//$rows：页显示条数，默认为5
var $rows=8;
//$page：显示第几页，默认为1
var $page=1;
//$total:查询出来的总条数
var $total=0;



//页面加载时默认显示
window.onload=function(){

	//页面加载，默认显示5条
	$("select").val($rows);
	//页面加载默认第一页
	$("#page").val($page);
	//加载模糊查询关键字
	$("#mytext").val("");
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


//根据条件进行精确查询
$("#search").click(function(){
	var $check;
	var $bookTitl,$author,$bookTypes,$bookNumber;
	var $searchRequest;
	var $searchKey;
	$searchKey=$("#mytext").val();

	//alert("==$searchKey==="+$searchKey);


	$check=$("#select").val();

	if ($check=="bookTitl") {

		$bookTitl=$searchKey;

	} else if($check=="author"){
		$author=$searchKey;

	}else if($check=="bookTypes"){

		$bookTypes=$searchKey;


	}else if($check=="bookNumber"){
		$bookNumber=$searchKey;

	}
    
    

	//清空一下
	$("table tbody").empty();
	//获取显示页
	$page=$("#page").val();
	$searchRequest={"page":$page,"rows":$rows,"bookTitl":$bookTitl,"author":$author,"bookTypes":$bookTypes,"bookNumber":$bookNumber}
	searchJson($searchRequest);
});


//根据下拉框和输入请求获取
function searchJson(jsonData){
	$.ajax({  
    type:"POST",  
    url: "/ibook/l_system/books/bookInfoList",  
    async:false,
    dataType:"json",  
    contentType:"application/json", // 指定json协议  
    data:JSON.stringify(jsonData),  
    success:function(data){  
    	//alert("有返回数据");
			//页面显示数据总条数
			$total=JSON.stringify(data.total);
			$("#total").text($total);
			//显示共有几页，用到取整函数Math.ceil()
			$last=Math.ceil(JSON.stringify(data.total)/$rows);
			$("#showPage").text($last);
			//alert(data.returnRows);
			$.each(data.returnRows,function(index, item){
				//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
				var $publicationDate=format(item.publicationDate);
				var $purchasingDate=format(item.purchasingDate);
				//alert(format(item.publicationDate))
				
			    
			    $("#readers_list tbody").append(
			    
			    '<tr><td  class="td_ellipsis" title="'+item.bookTitl+'">'+item.bookTitl+'</td>'+
	            '<td class="td_ellipsis" title="'+item.author+'">'+item.author+'</td>'+
	            '<td class="td_ellipsis" title="'+item.publishingHouse+'">'+item.publishingHouse+'</td>'+
	            '<td class="td_ellipsis" title="'+$publicationDate+'">'+$publicationDate+'</td>'+
	            '<td class="td_ellipsis" title="'+item.bookTypes+'">'+item.bookTypes+'</td>'+
	            '<td class="td_ellipsis" title="'+item.status+'">'+item.status+'</td>'+
	            '<td class="td_ellipsis" title="'+$purchasingDate+'">'+$purchasingDate+'</td>'+
	            '<td class="td_ellipsis" title=""点击阅览"">'+'<a href="/ibook/l_system/books/bookinfor/view?code='+item.bookNumber+'&bookTitl='+item.bookTitl+'&bookTypes='+item.bookTypes+'">'+"点击阅览"+'</a>'+'</td>'+
	            '<th><input  type="checkbox" class="click_checkbox" name="allCheck" value='+item.bookId+'></th></tr>');		
	   				});
			}});
                 
            
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
	//alert("==点击search2=="+$keyWord);
	$.ajax({
		type:'post',
		url:'/ibook/l_system/books/bookList',
		data: "page="+$page+"&rows="+$rows+"&bookTitl="+$keyWord+"&author="+$keyWord+"&bookTypes="+$keyWord,
		success:function(data){
			//页面显示数据总条数
			$total=JSON.stringify(data.total);
			$("#total").text($total);
			//显示共有几页，用到取整函数Math.ceil()
			$last=Math.ceil(JSON.stringify(data.total)/$rows);
			$("#showPage").text($last);
			//alert(data.returnRows);
			$.each(data.returnRows,function(index, item){
				//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
				var $publicationDate=format(item.publicationDate);
				var $purchasingDate=format(item.purchasingDate);
				//alert(format(item.publicationDate))
			    $("#readers_list tbody").append(
			    '<tr><td  class="td_ellipsis" title="'+item.bookTitl+'">'+item.bookTitl+'</td>'+
	            '<td class="td_ellipsis" title="'+item.author+'">'+item.author+'</td>'+
	            '<td class="td_ellipsis" title="'+item.publishingHouse+'">'+item.publishingHouse+'</td>'+
	            '<td class="td_ellipsis" title="'+$publicationDate+'">'+$publicationDate+'</td>'+
	            '<td class="td_ellipsis" title="'+item.bookTypes+'">'+item.bookTypes+'</td>'+
	            '<td class="td_ellipsis" title="'+item.status+'">'+item.status+'</td>'+
	            '<td class="td_ellipsis" title="'+$purchasingDate+'">'+$purchasingDate+'</td>'+
	            '<td class="td_ellipsis" title=""点击阅览"">'+'<a href="/ibook/l_system/books/bookinfor/view?code='+item.bookNumber+'&bookTitl='+item.bookTitl+'&bookTypes='+item.bookTypes+'">'+"点击阅览"+'</a>'+'</td>'+
	            '<th><input  type="checkbox" class="click_checkbox" name="allCheck" value='+item.bookId+'></th></tr>');		
	   });		
	 }
	});
}

   


//刷新
$("#flush").click(function(){
	window.location.reload()
});

$("#out").click(function(){
	alert("导出");
	window.open("/ibook/l_system/export");
});

$("#inButton").click(function(){
var formData = new FormData($( "#excelfile" )[0]); 
//alert("formData:"+formData);

var ajaxUrl = "/ibook/l_system/import";
$.ajax({
    type: "POST",
    url: ajaxUrl,
    data:formData,
    async: false,  
    cache: false,  
    contentType: false,  
    processData: false,
    success: function (data) {
        alert("导入成功！");
    },
    error: function(data) {
        alert("error:"+data.responseText);

    }
    });
});
