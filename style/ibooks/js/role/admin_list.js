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
		roleList();
		 };
	//获取角色列表
    function roleList(){
    	
		$.ajax({
			type : 'post',
			url : '/ibook/l_system/role/roleList',
			success : function(data) {
				$.each(data.roleList,function(indext,item){
					$("#role_select").append(
							'<option value="'+item.roleId+'">'+item.roleName+'</option>'
					);
					$("#roleadd_select").append(
							'<option value="'+item.roleId+'">'+item.roleName+'</option>'
					);
				});
				
			}
		});
    }
		 
		 
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
			url:'/ibook/l_system/readers/getReadersRoleList',
			data: "page="+$page+"&rows="+$rows,
			success:function(data){
			//页面显示数据总条数
			$total=JSON.stringify(data.total);
			$("#total").text($total);
			//显示共有几页，用到取整函数Math.ceil()
			$last=Math.ceil(JSON.stringify(data.total)/$rows);
			$("#showPage").text($last);
			
			$.each(data.returnRows,function(index, item){

				//遍历属于该角色 的用户
				var $roleName="";			
				$.each(item.roles,function(index,it){
					//if(index+1<it.size())
					$roleName+=it.roleName+" ";
				});
				//实现后台传来的时间戳转换为yyyy-mm-dd hh:mm:ss
				var $createdTime=format(item.created); 
				
			    var $readerStatus="停用";
			    if(item.readerStatus==1){
			    	$readerStatus="启用";
			    }
			    $("#readers_list tbody").append(
			    '<tr><th class="table-check"  ><input type="checkbox" class="click_checkbox" name="allCheck" value='+item.readerId+'></th>'+
	            '<td>'+item.readerName+'</td>'+
	            '<td>'+item.phone+'</td>'+
	            '<td>'+item.email+'</td>'+
	            '<td>'+$roleName+'</td>'+
	            '<td>'+$createdTime+'</td>'+
	            '<td>'+$readerStatus+'</td>'+
	            '<td>'+
	       			'<div class="am-btn-group am-btn-group-xs">'+
	          			'<button class=" am-btn-xs am-text-success am-round"  data-toggle="modal" data-target="#myModal1" data-backdrop="static"  onclick="getStopReaderId('+item.readerId+')"><span class="am-icon-minus" title="停用" ></span> </button>'+
	         		 	'<button class=" am-btn-xs am-text-secondary am-round " data-toggle="modal" data-target="#myModal2" data-backdrop="static" title="编辑" onclick="getReaderId('+item.readerId+')" ><span class="am-icon-pencil-square-o"></span></button>'+
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
			url:'/ibook/l_system/readers/deleteRoleWithUpdate',
			data: "$sel_a="+$sel_a,
			success:function(data){
				show();
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
			success:function(data){
				show();
			}
			});
	}    
	//ajax传递前台修改读者数据给后台
	function editMgJson(data){
		var data=data;
		$.ajax({
			type:'post',
			url:'/ibook/l_system/readers/updateMg',
			data: data,
			success:function(data){
				show();
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
	    	 
	     });
	//给隐藏id赋值,onclick="getReaderId(动态参数值)"
	function getReaderId(id){
	  	var $val=id;
		//$("#editreaderId").val(val);
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
					$("#phone").val(data.reader.phone);
					$("#email").val(data.reader.email);
				}
			}
			});
					
	}

	//编辑管理者信息
	$("#editSubmit").click(function(){
		var mod_pass=hex_md5($("#editPs").val());
		$("#editPs").val(mod_pass);
		var data=$("#infoEdit").serialize();
		data = decodeURIComponent(data,true);
		editMgJson(data);

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
		
	});
	//插入信息传递到后台
	function insertReaderJson(data){
		var data=data;
		$.ajax({
			type:'post',
			url:'/ibook/l_system/readers/insertMg',
			data: data,
			success:function(data){
				show();
			
			}
			});
	}

	//添加读者模块
	$("#add").click(function(){
		//密码加密
		var mod_pass=hex_md5($("#ps").val());
		$("#ps").val(mod_pass);
	 	var data=$("#addReader").serialize();
	 	data = decodeURIComponent(data,true);
	 	insertReaderJson(data);
	});
	
	
	function getDeleteReaderId(id){
		$("#deleteId").val(id);
	}
	
	
	
	$("#deleteBton").click(function(){
	  	var $val=$("#deleteId").val();
		
		var $appointJsonData = {
				"id" : $val
			};
		
		$.ajax({
			type : "POST",
			url : "/ibook/l_system/readerrole/deleteMg",
			async : false,
			dataType : "json",
			contentType : "application/json",
			data : JSON.stringify($appointJsonData),
			success :function(data){
				if(data.success){
					alert(data.message);
					
				}else{
					alert(data.message);
				}
				show();
			}
			
		});
		
	});
	
