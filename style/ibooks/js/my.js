$(document).ready(
function getinfor(){
	    var $id=$("#id").val();
		$.ajax({
			type:'post',
			url:'/ibook/l_system/books/bookquerybyid',
			data: "id="+$id,
			success:function(data){
				$("#bookTitl").append(data.bookTitl);
				$("#bookTypes").append(data.bookTypes);	
				$("#bookNumber").append(data.bookNumber);	
				$("#ISBN").val(data.bookNumber);	
				$("#publishingHouse").append(data.publishingHouse);	
				$("#author").append(data.author);	
				$("#blurb").append(data.blurb);	
				//$("#blurb").val(data.blurb);	
				$("#publicationDate").append(format(data.publicationDate));
				$("#img").attr('src',data.img); 
				$("#reimg").attr('src',data.img); 

		    }
		});
});


$(document).ready(function(){
//	$("#btn").click(function(){
//		confirm("是否确认借阅？");
//	})
	$("#xg").click(function(){
		var att=document.getElementsByTagreaderNickname("input");
		var b=document.getElementsByreaderNickname("one");
		for(var i=0;i<b.length,i<att.length;i++){
			if(att[i].disabled){
			att[i].disabled=false; 
		}
 		$("#btn1").show();
		}
	})
	$("#btn1").hide();
	$("#btn1").click(function(){
		var att=document.getElementsByTagreaderNickname("input");
		var b=document.getElementsByreaderNickname("one");
		for(var i=0;i<b.length,i<att.length;i++){
			if(!(att[i].disabled)){
			att[i].disabled=true; 
		}
 		$("#btn1").hide();
		}
	})
	
    
    $('#myModal4').show;
   $("#bt1").click(function(){
   	alert("保存成功！");
   })
   $("#bt2").click(function(){
   	alert("添加成功！");
   })
   $("#bt3").click(function(){
   	alert("加入成功！");
   })
   $("#bt4").click(function(){
   	prompt("添加书签名：");
   })
})
function change() {
            var divDisp = document.getElementById("search").style.display;
            if (divDisp == "block") {
                document.getElementById("search").style.display = "none";
               $("#ss1").show();$("#ss2").show();$("#ss3").show();$("#ss4").show();
            } else {
                document.getElementById("search").style.display = "block"; 
                $("#ss1").hide();$("#ss2").hide();$("#ss3").hide();$("#ss4").hide();
            }
        }



$(document).ready(function(){
$('#compact-pagination').pagination({
	pages: 50,
	cssStyle: 'compact-theme',
	displayedPages: 1,
	items_per_page:2
});
})
 