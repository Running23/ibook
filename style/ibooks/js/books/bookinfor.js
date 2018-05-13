$(document).ready(function() {
	$("#btn").click(function() {
		var $bookId = $("#id").val();
		var $getbookTime = $("#getbookTime").val();
		var $borrowTime = $("#borrowTime").val();
		// alert($bookId+"="+$getbookTime+"="+$borrowTime);
		var $appointJsonData = {
			"bookId" : $bookId,
			"getbookTime" : $getbookTime,
			"borrowTime" : $borrowTime
		};
		$.ajax({
			type : "POST",
			url : "/ibook/l_system/appointbook/data/saveAppointbookinfor",
			async : false,
			dataType : "json",
			contentType : "application/json",
			data : JSON.stringify($appointJsonData),
			success : function(data) {
				if (data.success) {
					alert(data.message);
				}else{
					alert(data.message);
				}
			},
			error : function(data) {
				alert("请选择取书时间和借书天数!");
			}
		});
	});
});