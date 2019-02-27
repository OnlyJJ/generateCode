[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>

		[#include "/admin/include/head.ftl"]
		<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
			[#include "/admin/include/header.ftl"]
		<div class="clearfix"></div>
		<div class="page-container">

				[@sidebar pattern="admin:dayStat20170822"][#include "/admin/include/sidebar.ftl"][/@sidebar]
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
							<li><a href="${base}/admin/dayStat20170822/list.jhtml">每日统计数据表管理</a><i
						class="fa fa-circle"></i></li>
							<li>
								<a href="javascript:;">查看每日统计数据表详情</a>
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
																	<label class="control-label col-md-3">客户端类型,0-android,1-IOS:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.clientType}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">平台id:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.platformId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">添加时间，yyyyMMddHH:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.addtime}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">手机卡标识:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.uuid}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">登录帐号:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.userAccount}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">渠道id:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.channelId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">产品id:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.productId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">SDK版本:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.version}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">是否登录，1-是; 0-否:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.isLogin}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">是否安装，1-是; 0-否:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.isAdd}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">是否注册，1-是; 0-否:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.isReg}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">是否激活，1-是; 0-否:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.isAct}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">留存天数，例如: 1、3、7:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.retention}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">是否有效 用户，1是,0否:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.isVaild}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">有效用户留存天数如1，3，7，:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.retentionVaild}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">douid:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${dayStat20170822.douId}
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
