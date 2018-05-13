//isbn根据获取书籍信息，显示
$(document).ready(function queryBookInfoJson() {
	var $bookid = $("#bookid").val();
	$.ajax({
		type : 'post',
		url : '/ibook/l_system/books/bookquerybyid',
		data : "id=" + $bookid,
		success : function(data) {
			$("#publishingHouse").append(data.publishingHouse);
			$("#isbn").append(data.bookNumber);
			$("#author").append(data.author);
			$("#blurb").append(data.blurb);
			$("#publicationDate").append(format(data.publicationDate));
			$("#bookTitl").append(data.bookTitl);
			$("#bookTypes").append(data.bookTypes);
			$("#img").attr('src', data.img);
			$("#reimg").attr('src', data.img);

		}
	});

});
$(document).ready(function() {
	$("#btn").click(function() {
		var $bookid=$("#bookid").val();
		var $bookinfor = {
			"bookId" : $bookid,
		}
		$.ajax({
			type : "POST",
			url : "/ibook/l_system/lendbookpages/insertLendinfor",
			async : false,
			dataType : "json",
			contentType : "application/json",
			data : JSON.stringify($bookinfor),
			success : function(data) {
				if(data.success){
					alert(data.message);
				}else{
					alert(data.message);
				}
			}
		}
		);
	});
	
	
	$("#btn_bookreturn").click(function() {
		$.ajax({
			type : "POST",
			url : "/ibook/l_system/lendbookpages/returnbook",
			async : false,
			dataType : "json",
			contentType : "application/json",
			success : function(data) {
				if(data.success){
					alert(data.message);
				}else{
					alert(data.message);
				}
			}
		}
		);
	});
});
