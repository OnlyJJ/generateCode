[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>

		[#include "/admin/include/head.ftl"]
		<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
			[#include "/admin/include/header.ftl"]
		<div class="clearfix"></div>
		<div class="page-container">

				[@sidebar pattern="admin:diaryInfo"][#include "/admin/include/sidebar.ftl"][/@sidebar]
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
							<li><a href="${base}/admin/diaryInfo/list.jhtml">动态信息表管理</a><i
						class="fa fa-circle"></i></li>
							<li>
								<a href="javascript:;">查看动态信息表详情</a>
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
																	<label class="control-label col-md-3">:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.userId}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">动态发布来源,0:普通用户,1:主播,2:系统发布:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.publicFromType}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">动态文本信息:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.diaryTextInfo}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">动态链接url:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.diaryLinkUrl}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">发布时间:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.publicTime}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">被赞总数:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.prizeTotalNum}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">被踩总数:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.belittleTotalNum}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">被评论总条数:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.commentTotalNum}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">发布ip:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.publicIp}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">发布地址:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.publicAddress}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">客户端类型:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.clientType}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.remark}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">排序权重,值越大越靠前:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.sortWeight}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">是否被用户撤回,0:否,1:是:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.isUserCancel}
																		</p>
																	</div>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-group">
																	<label class="control-label col-md-3">管理控制状态,0:新建,1:审核违规-删除,2-审核未违规:</label>
																	<div class="col-md-9">
																		<p class="form-control-static">
																			${diaryInfo.mgrState}
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
