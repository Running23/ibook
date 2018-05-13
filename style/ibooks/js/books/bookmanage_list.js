$(document).ready(function(){
	var htmlHeight

	function selectOnchange(){
		$("#hidden_input").attr("name", $('select[name="parameName"]').val());
	}
	
	function page(page){
		$("#page").val(page);
		findPage();
	}
	
	function findPage() {
		$("#hidden_input").val($("input[name='parameValue']").val())
		$.ajax({
			url: '/ibook/l_system/bookreack/fingPage',
			type:'post',
			data: $('#bookreackList_form').serialize(),
			dataType:'json',
			success: function(json){
				$("#page").val(json.page);
				$("#pages").text("页/共"+json.pages+"页");
				$("#rows").text("显示"+json.startRow+"到"+json.endRow+"条,共"+json.total+"记录");
				$("table tbody").empty();
				if(json.page==1){
					$("#home_page").attr("disabled", "disabled");
					$("#previous_page").attr("disabled", "disabled");
				}else{
					$("#home_page").removeAttr("disabled");
					$("#home_page").attr("onclick","page(1)");
					$("#previous_page").removeAttr("disabled");
					$("#previous_page").attr("onclick","page("+(json.page-1)+")");
				}
				if(json.page == json.pages){
					$("#next_page").attr("disabled", "disabled");
					$("#last_page").attr("disabled", "disabled");
				}else{
					$("#next_page").removeAttr("disabled");
					$("#next_page").attr("onclick","page("+(json.page+1)+")");
					$("#last_page").removeAttr("disabled");
					$("#last_page").attr("onclick","page("+json.pages+")");
				}
				var status_str = "k";
				$.each(json.rows,function(index, item){
					if(item.state==0){
						status_str="空置"
					}else if(item.state == 1){
						status_str="占用"
					}else if(item.state == -1){
						status_str="修复中"
					}
					item.bookBarcode = item.bookBarcode!=null?item.bookBarcode:"--"
					item.bookTitl = item.bookTitl!=null?item.bookTitl:"--"
					$("table tbody").append('<tr><td>'+item.bookraceNo+'</td>'
					+'<td>'+item.shelfNo+'</td>'
					+'<td>'+item.bookBarcode+'</td>'
					+'<td>'+item.bookTitl+'</td>'
					+'<td>'+status_str+'</td></tr>')
				})
			}
		});
	}
	
	function htmlHeight() {
		htmlHeight = $(window).height();
		var height_table = $("#no-more-tables").height() / htmlHeight;
		console.log(height_table);
		if (height_table < 0.56) {
			$("#no-more-tables").css("padding-bottom",
					htmlHeight * (0.56 - height_table));
		}
	}
});