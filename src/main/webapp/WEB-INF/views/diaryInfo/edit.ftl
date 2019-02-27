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
		[@sidebar pattern="admin:diaryInfo"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑动态信息表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/diaryInfo/list.jhtml">动态信息表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">动态信息表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/diaryInfo/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${diaryInfo.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"></label>
													<div class="col-md-9">
														<input type="text" name="userId"
															id="userId" class="form-control"
														value="${diaryInfo.userId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">动态发布来源,0:普通用户,1:主播,2:系统发布</label>
													<div class="col-md-9">
														<input type="text" name="publicFromType"
															id="publicFromType" class="form-control"
														value="${diaryInfo.publicFromType}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">动态文本信息</label>
													<div class="col-md-9">
														<input type="text" name="diaryTextInfo"
															id="diaryTextInfo" class="form-control"
														value="${diaryInfo.diaryTextInfo}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">动态链接url</label>
													<div class="col-md-9">
														<input type="text" name="diaryLinkUrl"
															id="diaryLinkUrl" class="form-control"
														value="${diaryInfo.diaryLinkUrl}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">发布时间</label>
													<div class="col-md-9">
														<input type="text" name="publicTime"
															id="publicTime" class="form-control"
														value="${diaryInfo.publicTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">被赞总数</label>
													<div class="col-md-9">
														<input type="text" name="prizeTotalNum"
															id="prizeTotalNum" class="form-control"
														value="${diaryInfo.prizeTotalNum}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">被踩总数</label>
													<div class="col-md-9">
														<input type="text" name="belittleTotalNum"
															id="belittleTotalNum" class="form-control"
														value="${diaryInfo.belittleTotalNum}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">被评论总条数</label>
													<div class="col-md-9">
														<input type="text" name="commentTotalNum"
															id="commentTotalNum" class="form-control"
														value="${diaryInfo.commentTotalNum}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">发布ip</label>
													<div class="col-md-9">
														<input type="text" name="publicIp"
															id="publicIp" class="form-control"
														value="${diaryInfo.publicIp}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">发布地址</label>
													<div class="col-md-9">
														<input type="text" name="publicAddress"
															id="publicAddress" class="form-control"
														value="${diaryInfo.publicAddress}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">客户端类型</label>
													<div class="col-md-9">
														<input type="text" name="clientType"
															id="clientType" class="form-control"
														value="${diaryInfo.clientType}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3"></label>
													<div class="col-md-9">
														<input type="text" name="remark"
															id="remark" class="form-control"
														value="${diaryInfo.remark}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">排序权重,值越大越靠前</label>
													<div class="col-md-9">
														<input type="text" name="sortWeight"
															id="sortWeight" class="form-control"
														value="${diaryInfo.sortWeight}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否被用户撤回,0:否,1:是</label>
													<div class="col-md-9">
														<input type="text" name="isUserCancel"
															id="isUserCancel" class="form-control"
														value="${diaryInfo.isUserCancel}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">管理控制状态,0:新建,1:审核违规-删除,2-审核未违规</label>
													<div class="col-md-9">
														<input type="text" name="mgrState"
															id="mgrState" class="form-control"
														value="${diaryInfo.mgrState}"	maxlength="200" />
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
								
						}
					});
				});
			</script>
</body>
</html>
