$(document).ready(function(){
	queryBookLendInfor();
})


function queryBookLendInfor(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/lendbookpages/data/booklendinfor',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			$.each(data.bookLendInforList,function(index,item){
				var $getbook_returntime=format(item.borrow_time);
				$("#bookLendInfor").append(
						
						'<div class="row"><a href="/ibook/l_system/books/bookinfor/view?code='+item.book_number+'&bookTitl='+item.book_titl+'&bookTypes='+item.book_types+'"><div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj1" title="'+item.book_titl+'">'
						+item.book_titl
						+'</span></div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj1" title="'+item.book_types+'">'
						+item.book_types
						+'</span></div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj1" title="'+item.book_number+'">'
						+item.book_number
						+'</span></div><div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 sl1"><span id="sj1">中文版</span></div><div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 sl1"><span id="sj1" title="'+$getbook_returntime+'">'
						+$getbook_returntime
						+'</span></div></a></div>'	
						
				);
			});
		}
	});
}