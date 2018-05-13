var $check;
var $bookId;

$(document).ready(function(){

    var result;
    var data;
    var finalRes = [];
    var suggestWrap =  $("#suggest-search");
    $("#keyword").bind('input propertychange',function(){
            var val = $(this).val();
            val = val.trim();

            if(val == ""){
              suggestWrap.hide();
            }else{

            	data=getJsonString(val);
                $.ajax({
                    type:"post",
                    url:"/ibook/l_system/books/selectByKeyword",
                    dataType:"json", 
                    async:true,
                    contentType:"application/json",
                    data:JSON.stringify(data),
                    success:function setContent(data){

                    	data=data.returnRows;
                        var li;
                        var tmpFrag = document.createDocumentFragment();
                        suggestWrap.find('ul').html('');
						if(data.length>5){
							data.length=5;
						}
						if ($check=="bookTitl") {
	                        for(var i=0;i < data.length;i++){
	                            li = document.createElement('LI');

	                            // 为<li>标签添加id元素
	                            li.id=data[i].bookId;
	                            li.innerHTML = data[i].bookTitl;

	                            tmpFrag.appendChild(li);
	                            suggestWrap.show();
	                        }

						} else if($check=="author"){
	                        for(var i=0;i < data.length;i++){
	                            li = document.createElement('LI');

	                            li.id=data[i].bookId;
	                            li.innerHTML = data[i].author;
	                            tmpFrag.appendChild(li);
	                            suggestWrap.show();
                        }
						}else if($check=="bookTypes"){
	                        for(var i=0;i < data.length;i++){
	                            li = document.createElement('LI');
	                            // 为<li>标签添加id元素
	                            li.id=data[i].bookId;
	                            li.innerHTML = data[i].bookTypes;
	                            tmpFrag.appendChild(li);
	                            suggestWrap.show();
	                        }
						}else if($check=="bookNumber"){
	                        for(var i=0;i < data.length;i++){
	                            li = document.createElement('LI');
	                            // 为<li>标签添加id元素
	                            li.id=data[i].bookId;
	                            li.innerHTML = data[i].bookNumber;
	                            tmpFrag.appendChild(li);
	                            suggestWrap.show();
	                        }
						}

                        suggestWrap.find('ul').append(tmpFrag);
                        /*悬浮样式*/
                        suggestWrap.find('li').hover(function(){
                            suggestWrap.find('li').removeClass('li-hover');
                            $(this).addClass('li-hover');
                        })
                        /*点击li选取结果*/
                        suggestWrap.find("li").click(function(){
                            var sr = $(this).html();
                            $bookId=$(this).attr("id");
                            $("#keyword").val(sr);
                            suggestWrap.hide();
                        })
                    }
                })
            }
        })
     }

     )



//根据条件进行模糊查询
function getJsonString(keyval){

	var $bookTitl,$author,$bookTypes,$bookNumber;
	var $searchRequest;
	var $searchKey;
	$searchKey=keyval;



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
    
    
	$searchRequest={"bookTitl":$bookTitl,"author":$author,"bookTypes":$bookTypes,"bookNumber":$bookNumber}
	return $searchRequest;
}


$("#searchIn").click(
		function(){
		$.ajax({
			type:'post',
			url:'/ibook/l_system/readervisithistory/insert',
			data: "bookId="+$bookId,
			success:function(data){
				if(data.insertinfor=="插入成功"){
					window.location.href="/ibook/l_system/lendbookpages/page/lendbookpageview?bookId="+$bookId;
				}
				if(data.insertinfor=="插入失败"){
					window.location.href="/ibook/l_system/lendbookpages/page/lendbookpageview?bookId="+$bookId;
				}
			}
		});
		}
	);