$(document).ready(function(){
	getBookLendRecommend();
	serchHistoryOrderByInfor();
})

function serchHistoryOrderByInfor(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/countbook/data/searchhistoryinfor',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			$.each(data.searchHistoryList,function(index,item){
				$("#searchHistoryinfor").append(
				'<div class="row item" ><div class="col-xs-5 col-sm-4 col-md-4 col-lg-4"><img id="img" src="'
				+item.img
				+'" /></div><div class="col-xs-5 col-sm-4 col-md-4 col-lg-4" ><span>'
				+item.book_titl
				+'</span><br><span>'
				+item.author
				+'</span></br></br><span>简介</span><br><p class="ip  td_ellipsis">'
				+item.blurb
				+'</p></div></div>'
				);
			});
		}
	});	
}

function getBookLendRecommend(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/Statistics/statisticsList/booklendrecommend',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			//alert(data);
			
			$.each(data.booksLendRecommend,function(index,item){
				$("#bookLendRecommend").append(
						'<li><a href="/ibook/l_system/lendbookpages/page/lendbookpageview?bookId='+item.bookId+'"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+item.bookTitl+'" class="f4 td_ellipsis lineword" ><span id="sj5">'+
						item.bookTitl
						+'</span></a></li>'
				);
			});
		}
	});	
}