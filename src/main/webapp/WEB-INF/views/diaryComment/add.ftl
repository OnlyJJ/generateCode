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
		[@sidebar pattern="admin:diaryComment"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;添加动态评论表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/diaryComment/list.jhtml">动态评论表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">添加动态评论表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/diaryComment/save.jhtml"
									method="post" class="form-horizontal">
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"><span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="userId"
															id="userId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">动态id<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="diaryInfoId"
															id="diaryInfoId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">评论回复类型,0:回复整个动态;1:回复某个评论<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="commentType"
															id="commentType" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">评论id,为空表示回复整个评论,不为空表示回复某条评论<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="diaryCommentId"
															id="diaryCommentId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"><span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="commentTime"
															id="commentTime" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">评论文字内容<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="commentTextInfo"
															id="commentTextInfo" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"><span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="ip"
															id="ip" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"><span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="address"
															id="address" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"><span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="clientType"
															id="clientType" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否被用户撤回,0:否,1:是<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="isUserCancel"
															id="isUserCancel" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">管理状态,0:默认系统自审通过,1:被举报违规而删除,2:人工审核通过<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="mgrState"
															id="mgrState" class="form-control"
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
                                diaryInfoId:{ required: true},
                                commentType:{ required: true},
                                diaryCommentId:{ required: true},
                                commentTime:{ required: true},
                                commentTextInfo:{ required: true},
                                ip:{ required: true},
                                address:{ required: true},
                                clientType:{ required: true},
                                isUserCancel:{ required: true},
                                mgrState:{required: true}
						}
					});
				});
			</script>
</body>
</html>
