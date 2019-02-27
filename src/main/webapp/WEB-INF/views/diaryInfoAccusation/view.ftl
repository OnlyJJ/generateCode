[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>

		[#include "/admin/include/head.ftl"]
		<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
			[#include "/admin/include/header.ftl"]
		<div class="clearfix"></div>
		<div class="page-container">

				[@sidebar pattern="admin:diaryInfoAccusation"][#include "/admin/include/sidebar.ftl"][/@sidebar]
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
							<li><a href="${base}/admin/diaryInfoAccusation/list.jhtml">动态内容举报信息管理</a><i
						class="fa fa-circle"></i></li>
							<li>
								<a href="javascript:;">查看动态内容举报信息详情</a>
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
																	<label class="control-label col-md-3">举报人userId:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.userId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">举报人当时的昵称:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.userName}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">被举报人userId:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.toUserId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">被举报人当时的昵称:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.toUserName}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">举报时间:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.accusationTime}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">相关动态id:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.diaryInfoId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">举报信息说明:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.accusationInfo}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">后台管理员处理状态,0:新建(未处理),1:删除(已处理):</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.mgrState}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">管理员操作的用户userId:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.operateUserId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">管理员操作时间:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.operateTime}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">管理员操作说明:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.operateComment}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">举报来源ip:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.accusationIp}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">举报来源地址:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfoAccusation.accusationAddr}
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
