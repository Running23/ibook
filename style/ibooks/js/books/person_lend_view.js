$(document).ready(function(){
	queryBookLendInfor();
	queryBookLendingInfor();
	queryAppontBookInfor();
})
function queryAppontBookInfor(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/appointbook/data/appointbookinfor',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			$.each(data.bookAppointInforList,function(index,item){
				var $getbook_time=format(item.getbook_time);
				$("#bookAppointInfor").append(
						'<a href="/ibook/l_system/books/bookinfor/view?code='+item.book_id+'&bookTitl='+item.book_titl+'&bookTypes='+item.book_types+'"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+item.book_titl+'">'
						+item.book_titl
						+'</span></div><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+item.book_types+'">'
						+item.book_types
						+'</span></div><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+$getbook_time+'">'
						+$getbook_time
						+'</span></div></a>'		
				);
			});
	    }
	});
}
function queryBookLendingInfor(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/lendbookpages/data/booklendinginfor',
		dataType:"json",
		async:true,
		contentType:"application/json",
		success:function(data){
			$.each(data.bookLendingInforList,function(index,item){
				var $getbook_returntime=format(item.return_time);
				
				$("#bookLendingInfor").append(
						
						'<a href="/ibook/l_system/books/bookinfor/view?code='+item.book_id+'&bookTitl='+item.book_titl+'&bookTypes='+item.book_types+'"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+item.book_titl+'">'
						+item.book_titl
						+'</span></div><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+item.book_types+'">'
						+item.book_types
						+'</span></div><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+$getbook_returntime+'">'
						+$getbook_returntime
						+'</span></div></a>'		
				);
			});
		}
	});
}

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
						'<a href="/ibook/l_system/books/bookinfor/view?code='+item.book_id+'&bookTitl='+item.book_titl+'&bookTypes='+item.book_types+'"><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+item.book_titl+'">'
						+item.book_titl
						+'</span></div><div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 sl1"><span id="sj1" title="'+$getbook_returntime+'">'
						+$getbook_returntime
						+'</span></div></a>'		
				);
			});
		}
	});
}

	