$(document).ready(function(){
	serchHistoryOrderByInfor()
	queryBookRecommendfor();
})
function queryBookRecommendfor(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/recommendbook/data/recommendbookinfor',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			$.each(data.bookRecommendInforList,function(index,item){
				$("#bookRecommendInfor").append(
				 '<div class="row one"><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"><a href="#"><img src="'
				 +item.img
				 +'" class="im"></a></div><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><p>书籍名字：<span id="sj1">'
				 +item.book_titl
				 +'</span></p><p>书籍类型：<span id="sj1">'
				 +item.book_types
				 +'</span></p><p>作者：<span id="sj1">'
				 +item.author
				 +'</span></p></div><div class="col-xs-6 col-sm-6 col-md-6 col-lg-6"><p>书编目ISBN:<span id="sj1">'
				 +item.book_number
				 +'</span></p></div></div>'
				);
			});
	    }
	});	
}

function serchHistoryOrderByInfor(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/countbook/data/searchhistoryinfor',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			$.each(data.searchHistoryList,function(index,item){
				//alert("========"+item.book_titl);
				$("#searchHistoryinfor").append(
				'<div class="row two"><a href="#"><div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj2">'
				+item.book_titl
				+'</span></div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj2">'
				+item.author
				+'</span></div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj2">'
				+item.book_number
				+'</span></div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj2">中文版</span></div><div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj2">'
				+item.time
				+'</span></div></a></div>'
				);
			});
		}
	});	
}