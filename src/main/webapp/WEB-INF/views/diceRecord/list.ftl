[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>

	[#include "/admin/include/head.ftl"]
	<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
		[#include "/admin/include/header.ftl"]
		<div class="clearfix"></div>
		<div class="page-container">
			[@sidebar pattern="admin:diceRecord"][#include "/admin/include/sidebar.ftl"][/@sidebar]
			<!-- BEGIN CONTENT -->
				<div class="page-content-wrapper">
					<div class="page-content" >
						<div class="page-head">
							<div class="page-title">
								<h1><i class="icon-grid" style="font-size: 20px;"></i>&nbsp;猜大小游戏记录表管理   </h1>
							</div>
							[#include "/admin/include/setting.ftl"]
						</div>
						<ul class="page-breadcrumb breadcrumb">
							<li>
								<a href="${base}/admin/common/main.jhtml">首页</a>
								<i class="fa fa-circle"></i>
							</li>
							<li>
								<a href="javascript:;">猜大小游戏记录表管理</a>
							</li>
						</ul>
							<div class="row">
								<div class="col-md-12">
									<div class="portlet light bordered">
										<div class="portlet-title">
											<div class="caption">
												<i class="fa fa-globe"></i>猜大小游戏记录表管理
											</div>
											<div class="actions">
												<a href="${base}/admin/diceRecord/add.jhtml"  class="btn btn-default btn-sm "> <i class="fa fa-plus"></i>添加</a>
												<a href="javascript:;"  class="btn btn-default btn-sm" id="deleteButton"> <i class="fa fa-trash-o"></i>删除</a>
											</div>
										</div>
										<form id="listForm" action="list.jhtml" method="get">
											<div class="portlet-body">
												<div class="table-toolbar">
													
												</div>
												<div id="sample_1_wrapper" class="dataTables_wrapper no-footer"><div class="table-scrollable">
													<table class="table table-striped table-bordered table-hover dataTable no-footer" id="table_list" role="grid" aria-describedby="sample_2_info">
														<thead>
															<tr role="row">
																<th class="table-checkbox sorting_disabled" rowspan="1" colspan="1" style="width: 24px;">
																	<span><input type="checkbox" class="group-checkable" data-set="#table_list .checkboxes"></span>
																</th>
				                                                 <th >主键</th> 
				                                                 <th >房间id</th> 
				                                                 <th >用户id</th> 
				                                                 <th >位置，1号，2号，3号等等</th> 
				                                                 <th >身份，0闲，1庄</th> 
				                                                 <th >位置状态，0空闲，1占领（待准备），2押注（已准备）</th> 
				                                                 <th >游戏状态，0进行中，1退出，2结束</th> 
				                                                 <th >抢位时间</th> 
				                                                 <th >押注类型，0-小，1-大</th> 
				                                                 <th >押注倍数</th> 
				                                                 <th >押注时间</th> 
				                                                 <th >结束时间</th> 
																<th style="width: 125px;">
																	操作
																</th>
															</tr>
														</thead>
														<tbody>
															[#list page.content as diceRecord]
																<tr class="gradeX [#if (diceRecord_index+1) % 2 != 0]odd[#else]even[/#if]" role="row">
																	<td>
																		<span><input type="checkbox" name="ids" class="checkboxes" value="${diceRecord.id}" ></span>
																	</td>
				                                                    <td>${ diceRecord.id}</td>
				                                                    
				                                                    <td>${ diceRecord.roomId}</td>
				                                                    
				                                                    <td>${ diceRecord.userId}</td>
				                                                    
				                                                    <td>${ diceRecord.site}</td>
				                                                    
				                                                    <td>${ diceRecord.identity}</td>
				                                                    
				                                                    <td>${ diceRecord.siteFlag}</td>
				                                                    
				                                                    <td>${ diceRecord.gameStatus}</td>
				                                                    
				                                                    <td>${ diceRecord.grapTime}</td>
				                                                    
				                                                    <td>${ diceRecord.stakeType}</td>
				                                                    
				                                                    <td>${ diceRecord.multiple}</td>
				                                                    
				                                                    <td>${ diceRecord.stakeTime}</td>
				                                                    
				                                                    <td>${ diceRecord.endTime}</td>
				                                                    
																	<td style="width: 125px;">
																		<a href="${base}/admin/diceRecord/edit/${diceRecord.id}.jhtml" class="btn default btn-xs purple "> <i class="fa fa-edit"></i> 编辑</a>
																		<a href="${base}/admin/diceRecord/view/${diceRecord.id}.jhtml" class="btn default btn-xs green-stripe ">查看</a>
																	</td>
																</tr>
															[/#list]
														</tbody>
													</table>
												</div>
												[@pagination pageNumber = page.pageNumber totalPages = page.totalPages]
													[#include "/admin/include/pagination.ftl"]
												[/@pagination]
											</div>
										<form>
									</div>
								</div>
							</div>
				
					</div>
				</div>
		</div>

			[#include "/admin/include/footer.ftl"]
			[#include "/admin/include/foot.ftl"]
			<link rel="stylesheet" type="text/css" href="${base}/resources/plugin/metronic/global/plugins/bootstrap-toastr/toastr.min.css"/>
			<script src="${base}/resources/plugin/metronic/global/plugins/bootstrap-toastr/toastr.min.js"></script>
			<script src="${base}/resources/plugin/metronic/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
		
			<script>
				$(document).ready(function(){
					[@flash_message /]
					var $listForm = $("#listForm");
					var $pageTotal = $("#pageTotal");
					var $pageSize = $("#pageSize");
					var $pageNumber = $("#pageNumber");
					// 页码跳转
					$.pageSkip = function(pageNumber) {
						$pageNumber.val(pageNumber);
						$listForm.submit();
						return false;
					}
					bootbox.setDefaults({locale:framework.locale});
					
					var table = $('#table_list');
					var $deleteButton = $("#deleteButton");
					var $singledelete = $(".single-delete");

			        table.find('.group-checkable').click(function () {
			            var set = jQuery(this).attr("data-set");
			            var checked = jQuery(this).is(":checked");
			            if(checked){
			           	 	$deleteButton.removeClass("disabled") ;
			            } else{
			           	 	$deleteButton.addClass("disabled");
			            }
			            jQuery(set).each(function () {
			                if (checked) {
			                    $(this).attr("checked", true).parent().addClass('checked');
			                } else {
			                	
			                    $(this).attr("checked", false).parent().removeClass('checked');
			                }
			            });
			        });
			        
			        
			        table.find(".checkboxes").click(function(){
						if (table.find("input[name='ids']:checked").size() > 0) {
							$deleteButton.removeClass("disabled");
						} else {
							table.find('.group-checkable').attr("checked", false).parent().removeClass('checked');
							$deleteButton.addClass("disabled");
						}
			        });
			        
			        $(".member_group_select").change(function(){
			        	$this = $(this);
			        	$this_selected_option = $(this).children('option:selected');
			        	bootbox.confirm(message("admin.dialog.deleteConfirm"), function(result) {
						 	if(result){
						 		$.ajax({
									url: "group.jhtml",
									type: "POST",
									data: {id:$this.attr('data-member-id'),groupId:$this_selected_option.val()},
									dataType: "json",
									cache: false,
									success: function(message) {
										art.message(message);
									}
								});
						 	}
		                }); 
			        	
			        });
			        
			        // 删除
					$deleteButton.click( function() {
						var $this = $(this);
						if ($this.hasClass("disabled")) {
							return false;
						}
						var $checkedIds = jQuery(table.find('.group-checkable').attr("data-set"));
						bootbox.confirm(message("admin.dialog.deleteConfirm"), function(result) {
						 	if(result){
						 		$.ajax({
									url: "delete.jhtml",
									type: "POST",
									data: $checkedIds.serialize(),
									dataType: "json",
									cache: false,
									success: function(message) {
										art.message(message);
										if (message.type == "success") {
											window.setTimeout(function() {
												window.location.reload(true);
											}, 3000);
										}
									}
								});
						 	}
		                }); 
					});
					
					$singledelete.click(function(){
						var id = $(this).attr("val");
						bootbox.confirm(message("admin.dialog.deleteConfirm"), function(result) {
						 	if(result){
						 		$.ajax({
									url: "delete.jhtml",
									type: "POST",
									data: {ids:id},
									dataType: "json",
									cache: false,
									success: function(message) {
										art.message(message);
										if (message.type == "success") {
											window.setTimeout(function() {
												window.location.reload(true);
											}, 3000);
										}
									}
								});
						 	}
		                }); 
					});
				});
			</script>
	</body>
</html>
