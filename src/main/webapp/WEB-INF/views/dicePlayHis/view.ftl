[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>

		[#include "/admin/include/head.ftl"]
		<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
			[#include "/admin/include/header.ftl"]
		<div class="clearfix"></div>
		<div class="page-container">

				[@sidebar pattern="admin:dicePlayHis"][#include "/admin/include/sidebar.ftl"][/@sidebar]
				<div class="page-content-wrapper">
					<div class="page-content" >
						<div class="page-head">
							<div class="page-title">
								<h1><i class="icon-grid" style="font-size: 20px;"></i>&nbsp;查看</h1>
							</div>
							[#include "/admin/include/setting.ftl"]
						</div>

						<ul class="page-breadcrumb breadcrumb">
							<li>
								<a href="${base}/admin/common/main.jhtml">首页</a>
								<i class="fa fa-circle"></i>
							</li>
							<li><a href="${base}/admin/dicePlayHis/list.jhtml">玩家猜大小游戏记录表管理</a><i
						class="fa fa-circle"></i></li>
							<li>
								<a href="javascript:;">查看玩家猜大小游戏记录表详情</a>
							</li>
						</ul>
							<div class="row">
								<div class="col-md-12">
									<div class="portlet light bordered">
										<div class="portlet-body form">
											<!-- BEGIN FORM-->
											<form class="form-horizontal" role="form">
													<div class="form-body">
														
														<div class="row">
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">游戏的房间:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dicePlayHis.roomId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">用户:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dicePlayHis.userId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">押注的金币:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dicePlayHis.stakeGlod}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">结果返回的金币:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dicePlayHis.returnGlod}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">创建时间:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dicePlayHis.creatTime}
																		</p>
																	</div>
																</div>
															</div>
														</div>
														<!--/row-->
														<div class="row">
														</div>
														<!--/row-->
													</div>
													<div class="form-actions">
														<div class="row">
															<div class="col-md-6">
																<div class="row">
																	<div class="col-md-offset-3 col-md-9">
																		<button type="button" class="btn default" id="backButton">返回</button>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
															</div>
														</div>
													</div>
												</form>
										</div>
									</div>
								</div>
							</div>
					</div>
				</div>
		</div>
			[#include "/admin/include/footer.ftl"]
			[#include "/admin/include/foot.ftl"]
			<link href="${base}/resources/plugin/metronic/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
			<script src="${base}/resources/plugin/metronic/global/plugins/fancybox/source/jquery.fancybox.js" type="text/javascript"></script>
			<script>
				$(document).ready(function(){
					$(".fancybox-img").fancybox({
						wrapCSS    : 'fancybox-custom',
						closeClick : true,
						openEffect : 'none',
						helpers : {
							title : {
								type : 'inside'
							},
							overlay : {
								css : {
									'background' : 'rgba(238,238,238,0.85)'
								}
							}
						}
					});
				});
			</script>
	</body>
</html>
