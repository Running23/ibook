$(document)
		.ready(
				function() {
					// 页面加载时默认显示
					window.onload = function() {
						// 页面加载，全选框默认没有选中
						$("#check_all").prop("checked", false);
						show();

					};

					// 获取数据显示数据
					function show() {
						// 清空一下列表
						$("table tbody").empty();
						// 重新加载
						pageJson();
					}

					// 异步加载数据列表

					function pageJson() {
						$.ajax({
									type : 'post',
									url : '/ibook/l_system/role/roleReadersList',
									success : function(data) {
										console.log(data.list);
										$.each(data.list,function(index, item) {
											var $permissionContent='';
											$.each(item.permissionList,function(i,it){
												$permissionContent+="["+it.permissionContent+"]";
											});
											
															$("#readers_list tbody")
																	.append(
																			'<tr><th class="table-check"  ><input type="checkbox" class="click_checkbox" name="allCheck" value='
																					+ item.roleId
																					+ '></th>'
																					+ '<td>'
																					+ item.roleName
																					+ '</td>'
																					+ '<td>'
																					+ $permissionContent
																					+ '</td>'
																					+ '<td>'
																					+ item.roleContent
																					+ '</td>'
																					+ '<td>'
																					+ '<div class="am-btn-group am-btn-group-xs">'
																					+ '<button class=" am-btn-xs am-text-success am-round"  data-toggle="modal" data-target="#myModal2" data-backdrop="static"  onclick="getRoleId('
																					+ item.roleId
																					+ ')"><span class="am-icon-pencil-square-o" title="修改" ></span> </button>'
																					+ '<button class=" am-btn-xs am-text-danger am-round" data-toggle="modal" data-target="#myModal4" data-backdrop="static" title="删除" onclick="getDeleteRoleId('
																					+ item.roleId
																					+ ')"><span class="am-icon-trash-o" ></span></button>'
																					+ '</div>'
																					+ '</td></tr>');

														});
										// 后台成功加载数据后,判断是否选中框全选中
										$(".click_checkbox").each(
												function() {
													var $v = $(this).val();
													if ($selA == 1) {
														$(this).prop("checked",
																true);
														if ($.inArray($v,
																$sel_a) == -1) {
															$sel_a.push($v);
														}
													}
												});
									}
								});
					}

					// $selA:定义变量,0：不选中;1：全选中
					var $selA = 0;
					// 选中与不选中
					$("#check_all").click(function() {
						if ($selA == 0) {
							$selA = 1;
							show();
						} else {
							$selA = 0;
							$sel_a = [];// 清空数组
							show();
						}
					});

					// 定义一个变量用于存储选中复选框的值
					var $sel_a = [];
					// 部分选择,翻页同样可以显示,选中时插入，取消时去除
					$(document).on("click", ".click_checkbox", function() {
						var $v = $(this).val();
						if ($.inArray($v, $sel_a) == -1) {
							$sel_a.push($v);
							if ($sel_a.length == $total) {
								$("#check_all").prop("checked", true);
							}
						} else {
							for (var i = 0; i <= $sel_a.length - 1; i++) {
								if ($sel_a[i] == $v) {
									$sel_a.splice(i, 1);
									$selA = 0
									$("#check_all").prop("checked", false);
								}
							}
						}

					});

					// ajax传数组数据给后台
					function arrayJson() {
						$.ajax({
							type : 'post',
							url : '/ibook/l_system/role/deleteRolesByCheck',
							data : "$sel_a=" + $sel_a,
							success : function(data) {
								if(data>0){
									alert("批量删除"+data+"条！");
									
								}else{
									
									alert("未知错误！");
								}
								show();
							}
						});
					}

					// 刷新
					$("#flush").click(function() {
						window.location.reload()
					});

					// 批量删除,有真正从数据库删除
					$('#deleteAll').click(function() {

						arrayJson();

					});

					// 定义一个变量用于存储选中菜单复选框的值
					var $menuArray = [];
					// 提交编辑表单
					$("#editRoleSubmit").click(
							function() {
								var data = $("#roleEdit").serialize();
								$(".checkMenu").each(function() {
									// 判断复选框是否为选中
									if ($(this).attr('checked')) {
										var $v = $(this).val();
										$menuArray.push($v);
									}
								});
								var $data = $("#roleEdit").serialize();
								$data = decodeURIComponent($data, true)
										+ "&permissionArray=" + $menuArray;
								roleJson($data);
								$menuArray = [];
							});
					// ajax传role数据给后台
					function roleJson(data) {
						$.ajax({
							type : 'post',
							url : '/ibook/l_system/role/editRole',
							data : data,
							success : function(data) {
								if (data.success) {
									alert(data.message);
								} else {
									alert(data.message);
								}
								show();
							}
						});
					}

					// 删除
					$("#deleteBton").click(function() {
						var $data = $("#deleteRoleId").serialize();
						$data = decodeURIComponent($data, true);
						deletRoleJson($data)
					});

					// ajax传roleId数据给后台
					function deletRoleJson(data) {
						$.ajax({
							type : 'post',
							url : '/ibook/l_system/role/deleteRole',
							data : data,
							success : function(dt) {
								if(dt==1){
									alert("已删除！");
								}else{
									alert("未知错误！");
								}
								show();
							}
						});
					}

					// 添加角色
					// 定义一个变量用于存储选中菜单复选框的值
					var $menuAddArray = [];
					// 提交表单
					$("#addRoleSubmit").click(
							function() {
								var data = $("#roleAdd").serialize();
								$(".checkMenu").each(function() {
									// 判断复选框是否为选中
									if ($(this).attr('checked')) {
										var $v = $(this).val();
										$menuAddArray.push($v);
									}
								});
								var $data = $("#roleAdd").serialize();
								$data = decodeURIComponent($data, true)
										+ "&permissionList=" + $menuAddArray;
								roleAddJson($data);
								$menuAddArray = [];
							});
					// ajax传role数据给后台
					function roleAddJson(data) {
						$.ajax({
							type : 'post',
							url : '/ibook/l_system/role/addRole',
							data : data,
							success : function(data) {
								if(data.success){
									alert(data.message);
								}else{
									alert(data.message);
								}
								show();
							}
						});
					}
				});