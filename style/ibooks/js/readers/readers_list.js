//查询条件
var $keyWord;
//$last:最后一页
var $last;
//$rows：页显示条数，默认为5
var $rows=5;
//$page：显示第几页，默认为1
var $page=1;
//$total:查询出来的总条数
var $total=0;

//页面加载时默认显示
window.onload=function(){
	//页面加载，全选框默认没有选中
	$("#check_all").prop("checked",false);
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
//模糊查询
$("#search").click(function(){
	$keyWord=$("#mytext").val();
	show();
});
 
//获取数据显示数据
function show(){
	//清空一下
	$("table tbody").empty();
	//获取显示页
	$page=$("#page").val();
	pageJson();	
}


//$selA:定义变量,0：不选中;1：全选中
var $selA=0;
//选中与不选中
$("#check_all").click(
	 function () {
		 if($selA==0){
	 	 $selA=1;
	 	 show();
	}else{
	 	 $selA=0;
	 	 $sel_a=[];//清空数组
	 	 show();
		 }
	 });

//定义一个变量用于存储选中复选框的值
var $sel_a=[];
//部分选择,翻页同样可以显示,选中时插入，取消时去除
$(document).on("click",".click_checkbox",function(){
      var $v=$(this).val();
//       var $attr=$(this).attr("checked");
//       alert($attr);
         if ($.inArray($v,$sel_a)==-1){
        	    //alert($v);
                $sel_a.push($v);
                if($sel_a.length==$total){
                	$("#check_all").prop("checked",true);	
                }
            }else{
                for(var i=0;i<=$sel_a.length-1;i++){
                    if($sel_a[i]==$v){
                    	//alert($v);
                        $sel_a.splice(i,1);
                        $selA=0
                        $("#check_all").prop("checked",false);
                    }
                }
            }
    
});




//异步加载数据列表

function pageJson(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/readers/list',
		data: "page="+$page+"&rows="+$rows+"&readerName="+$keyWord+"&phone="+$keyWord+"&email="+$keyWord,
		//contentType: "application/x-www-form-urlencod",
		success:function(data){
			
		//页面显示数据总条数
		$total=JSON.stringify(data.total);
		$("#total").text($total);
		//显示共有几页，用到取整函数Math.ceil()
		$last=Math.ceil(JSON.stringify(data.total)/$rows);
		$("#showPage").text($last);
		
		$.each(data.returnRows,function(index, item){
			//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
			var $createdTime=format(item.created); 
			//后台性别数据和前台显示的转换
			var $sex="保密";
			if(item.sex==0){
				$sex="男";
			}else if(item.sex==1){
				$sex="女";
			}
		    var $readerStatus="停用";
		    if(item.readerStatus==1){
		    	$readerStatus="启用";
		    }
		    $("#readers_list tbody").append(
		    '<tr><th class="table-check"   class="td_ellipsis"><input type="checkbox" class="click_checkbox" name="allCheck" value='+item.readerId+'></th>'+
		    '<td class="td_ellipsis tdwidth"  >'+item.readerId+'</td>'+
            '<td class="td_ellipsis tdwidth">'+item.readerName+'</td>'+
            '<td class="td_ellipsis tdwidth">'+$sex+'</td>'+
            '<td class="td_ellipsis">'+item.readerNickname+'</td>'+
            '<td class="td_ellipsis"  title="'+item.phone+'">'+item.phone+'</td>'+
            '<td class="td_ellipsis"  title="'+item.email+'">'+item.email+'</td>'+
            '<td class="td_ellipsis"  title="'+item.readerAddress+'">'+item.readerAddress+'</td>'+
            '<td class="td_ellipsis"  title="'+$createdTime+'">'+$createdTime+'</td>'+
            '<td class="td_ellipsis">'+$readerStatus+'</td>'+
//            '<td class="td_ellipsis" title="'+item.machineReaderid+'">'+item.machineReaderid+'</td>'+
            '<td>'+
       			'<div class="am-btn-group am-btn-group-xs row">'+
          			'<button class=" am-btn-xs am-text-success am-round"  data-toggle="modal" data-target="#myModal1" data-backdrop="static"  onclick="getStopReaderId('+item.readerId+')"><span class="am-icon-minus" title="停用" ></span> </button>'+
         		 	'<button class=" am-btn-xs am-text-secondary am-round " data-toggle="modal" data-target="#myModal2" data-backdrop="static" title="编辑" onclick="getReaderId('+item.readerId+')" ><span class="am-icon-pencil-square-o"></span></button>'+
          			'<button class=" am-btn-xs am-text-secondary am-round" data-toggle="modal" data-target="#myModal3" data-backdrop="static"  title="修改密码"  onclick="getPasswordReaderId('+item.readerId+')" ><span class="am-icon-key"></span></button>'+
          			'<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除"    onclick="getDeleteReaderId('+item.readerId+')"><span class="am-icon-trash-o" ></span></button>'+
        		'</div>'+
			'</td></tr>');			
	   });		
	   //后台加载数据,将选中的复选框状态显示出来    
		$(".click_checkbox").each(function(){
		   var $v=$(this).val();
		   if ($.inArray($v,$sel_a)!=-1){
		         $(this).prop("checked",true);
		          }
		    });
	   //后台成功加载数据后,判断是否选中框全选中
	   $(".click_checkbox").each(function(){
		   var $v=$(this).val();
		   if($selA==1){
			   $(this).prop("checked",true);
		       if ($.inArray($v,$sel_a)==-1){
		            $sel_a.push($v);
		       }
		   }
	   });
	 }
	});
}
//ajax传数组数据给后台
function arrayJson(){
	$.ajax({
		type:'post',
		url:'/ibook/l_system/readers/deleteWithUpdate',
		data: "$sel_a="+$sel_a,
		success:function(data){
		//alert(data);
		
		}
		});
}
//ajax传递前台修改读者数据给后台
function editReaderJson(data){
	var data=data;
	$.ajax({
		type:'post',
		url:'/ibook/l_system/reader/readerEdit',
		data: data,
		success:function(dt){
		//alert(data);
		if(dt>0){
			alert("编辑成功！");
			show();
		}else{
			alert("编辑失败！");
		}
		}
		});
}    


//刷新
$("#flush").click(function(){
	window.location.reload()
});


//<!-- 根据姓名再当页精确查询 -->
     //当前表根据姓名精确查询
  	$('#searchByName').change(function(){
    	
        var $searchByName=$('#searchByName').val();
        $("table tbody tr")
              .hide()
              .filter(":contains('"+$searchByName+"')")
              .show();
     });
     $('#searchByName').focus(function(){
    	 $('#searchByName').val("");
	 	 $selA=0;
	 	 $sel_a=[];//清空数组
	 	 $("#check_all").prop("checked",false);
    	 show();
		 
     });
//<!--批量删除,没有真正从数据库删除-->
     $('#deleteAll').click(function(){
    	 arrayJson();
    	 show();
     });
//给隐藏id赋值,onclick="getReaderId(动态参数值)"
function getReaderId(id){
  	var $val=id;
	
	var $appointJsonData = {
			"id" : $val
		};
	$.ajax({
		type : "POST",
		url : "/ibook/l_system/reader/getReader",
		async : false,
		dataType : "json",
		contentType : "application/json",
		data : JSON.stringify($appointJsonData),
		success : function(data) {
			if(data.success){
				$("#editreaderId").val(data.reader.readerId);
				$("#readerName").val(data.reader.readerName);
				$("#readerNickname").val(data.reader.readerNickname);
				$("#phone").val(data.reader.phone);
				$("#email").val(data.reader.email);
				$("#readerAddress").val(data.reader.readerAddress);
				$("#content").val(data.reader.content);
				if(data.reader.readerStatus==0){
					$("#stop").attr("checked",true);
					$("#start").attr("checked",false);
				}else if(data.reader.readerStatus==1){
					$("#stop").attr("checked",false);
					$("#start").attr("checked",true);
				}
				if(data.reader.sex==0){
					$("#male").attr("checked",true);
					$("#female").attr("checked",false);
				}else if(data.reader.sex==1){
					$("#male").attr("checked",false);
					$("#female").attr("checked",true);
				}else{
					$("#other").attr("checked",true);
				}
				
				
			}
			
			//数据显示
//			$("#roleName").val(data.roles.roleName);
//			$("#roleContent").val(data.roles.roleContent);
//			
//			$('#checkbox input:checkbox').each(function () {
//		        $(this).attr('checked',false);
//			});
//			
//			
//			$.each(data.permissionArray,function(n,value){
//				$("#checkbox input:checkbox[value="+value+"]").attr('checked','true');
//			});
		}
	});	
	
	//
}

//修改读者信息
$("#editSubmit").click(function(){
	var data=$("#infoEdit").serialize();
	data = decodeURIComponent(data,true);
	editReaderJson(data);
	show();
});
//停用和禁用部分
function getStopReaderId(id){
  	var val=id;
  	$("#stopreaderId").val(val);
}
$("#stopBton").click(function(){
	var data=$("#statusEdit").serialize();
	data = decodeURIComponent(data,true);
	editReaderJson(data);
	show();
});



//重置密码部分
function getPasswordReaderId(id){
  	var val=id;
  	$("#editpasswordId").val(val);
}
$("#savePassword").click(function(){
 	var data=$("#passwordEdit").serialize();
 	data = decodeURIComponent(data,true);
	editReaderJson(data);
	show();
});



//删除单条读者记录(状态更新)
var deleteId=0;
function getDeleteReaderId(id){
  	var val=id;
  	$("#deleteId").val(val);
}
$("#deleteBton").click(function(){
 	var data=$("#deleteWithUpdate").serialize();
 	data = decodeURIComponent(data,true);
	editReaderJson(data);
	show();
});

//插入信息传递到后台
function insertReaderJson(data){
	var data=data;
	$.ajax({
		url:'/ibook/l_system/reader/readerInsert',
		onSubmit:function(){
			var isNotExist = false;
		},
		type:'post',
		data: data,
		success:function(data){
		//alert(data);
		if(data>0){
			alert("录入成功！");
		}else{
			alert("请放好读者卡，重新试一次!");			
		}
		}
		});
}

//添加读者模块
$("#add").click(function(){
	
 	$('#myModal8').modal({backdrop:false});
	$.ajax({
		type:'post',		
		url:'/ibook/l_system/reader/isNotCarId',
		dataType: 'json',
		timeout:60*1000,
		success: function(json){
			isNotExist = json.success;
			if(isNotExist){
				$("#machineReaderid").val(json.rederId);
				console.log("machineReaderid: "+$("#machineReaderid"));
				$('#myModal8').modal('hide');
				var data=$("#addReader").serialize();
			 	data = decodeURIComponent(data,true);
			 	insertReaderJson(data);
			 	show();
			}else{
				alert("请重新录入");
				$('#myModal8').modal('hide');
				$('myModal6').modal('toggle');
			}
		},
		error: function(json){
			alert("请重新注册");
			$('#myModal8').modal('hide');
			$('myModal6').modal('toggle');
		}
	});
});


//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
function add0(m){return m<10?'0'+m:m }
function format(shijianchuo)
{
//shijianchuo是整数，否则要parseInt转换
var time = new Date(shijianchuo);
var y = time.getFullYear();
var m = time.getMonth()+1;
var d = time.getDate();
var h = time.getHours();
var mm = time.getMinutes();
var s = time.getSeconds();
return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}

function isNotID(){
	var isNotExist = false;
	/* $("myModal6").modal({
		keyboard: true
	}); */
	$('#myModal8').modal({backdrop:false});
	$.ajax({
		type:'post',		
		url:'/ibook/l_system/reader/isNotCarId',
		dataType: 'json',
		success: function(json){
			isNotExist = json.success;
			if(isNotExist){
				$("#editreaderId").val(json.rederId);
				$('#myModal8').modal('hide');
			}else{
				alert("请重新录入");
				$('#myModal8').modal('hide');
				$('myModal6').modal('toggle');
			}
		},
		error: function(json){
			alert("请重新注册");
			$('#myModal8').modal('hide');
			$('myModal6').modal('toggle');
		}
	});
	return isNotExist;
}

