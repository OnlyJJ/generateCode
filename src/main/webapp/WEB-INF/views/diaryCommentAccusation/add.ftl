[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
<!DOCTYPE html>
[#include "/admin/include/head.ftl"]
<style>
.col-md-9{
    width: 75%;
}
.col-md-9 input{ 
    float: left;
    width: 88%;
    }
.col-md-9 span{
    display: block;
    float: left;
    width: 10%;
    }
</style>
<body
	class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
	[#include "/admin/include/header.ftl"]
	<div class="clearfix"></div>
	<div class="page-container">
		[@sidebar pattern="admin:diaryCommentAccusation"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;添加动态评论举报信息
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/diaryCommentAccusation/list.jhtml">动态评论举报信息管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">添加动态评论举报信息</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/diaryCommentAccusation/save.jhtml"
									method="post" class="form-horizontal">
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">举报人userId<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="userId"
															id="userId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">举报人当时的名称<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="userName"
															id="userName" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">被举报人userId<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="toUserId"
															id="toUserId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">被举报人当时的名称<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="toUserName"
															id="toUserName" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">举报时间<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="accusationTime"
															id="accusationTime" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">被举报的动态评论id<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="commentId"
															id="commentId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">举报信息说明<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="accusationInfo"
															id="accusationInfo" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">后台管理员处理状态,0:新建,1:已处理-删除(违规),2:已处理-未删除(未违规)<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="mgrState"
															id="mgrState" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">管理员操作的用户userId<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="operateUserId"
															id="operateUserId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">管理员操作时间<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="operateTime"
															id="operateTime" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">管理员操作说明<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="operateComment"
															id="operateComment" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
										</div>

										<div class="row"></div>
										<!--/row-->
									</div>
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-3 col-md-9">
												<button type="submit" class="btn green">确  定</button>
												<button type="button" class="btn default" id="backButton">返  回</button>
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
	<script>
				$(document).ready(function(){
					var $inputForm = $("#inputForm");
					
					[@flash_message /]
			        
					//初始化下拉
			        $('.bs-select').selectpicker({
			            iconBase: 'fa',
			            tickIcon: 'fa-check'
			        });
			        
			        if (jQuery().datepicker) {
			            $('.date-picker').datepicker({
			                rtl: Metronic.isRTL(),
			                orientation: "left",
			                language:"zh-CN",
			                autoclose: true
			            });
			        }
				    
					// 表单验证
					$inputForm.validate({
						rules: {
                                userId:{ required: true},
                                userName:{ required: true},
                                toUserId:{ required: true},
                                toUserName:{ required: true},
                                accusationTime:{ required: true},
                                commentId:{ required: true},
                                accusationInfo:{ required: true},
                                mgrState:{ required: true},
                                operateUserId:{ required: true},
                                operateTime:{ required: true},
                                operateComment:{required: true}
						}
					});
				});
			</script>
</body>
</html>
