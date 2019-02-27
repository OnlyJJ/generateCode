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
		[@sidebar pattern="admin:anchorPkConf"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑主播pk配置表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/anchorPkConf/list.jhtml">主播pk配置表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">主播pk配置表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/anchorPkConf/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${anchorPkConf.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">pk模式，目前：1-指定礼物金币数量，2-所有礼物金币数量</label>
													<div class="col-md-9">
														<input type="text" name="modle"
															id="modle" class="form-control"
														value="${anchorPkConf.modle}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">指定的pk礼物，当modle为1时，此字段不为空，多个礼物逗号隔开</label>
													<div class="col-md-9">
														<input type="text" name="gifts"
															id="gifts" class="form-control"
														value="${anchorPkConf.gifts}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">pk时间，固定为30/60/90/120/180</label>
													<div class="col-md-9">
														<input type="text" name="pkTime"
															id="pkTime" class="form-control"
														value="${anchorPkConf.pkTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">pk发起者</label>
													<div class="col-md-9">
														<input type="text" name="challenger"
															id="challenger" class="form-control"
														value="${anchorPkConf.challenger}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">pk接受者</label>
													<div class="col-md-9">
														<input type="text" name="beChallenger"
															id="beChallenger" class="form-control"
														value="${anchorPkConf.beChallenger}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否生效，默认0-无效，1-有效，当pk接受者接受后，设置为1：有效</label>
													<div class="col-md-9">
														<input type="text" name="validFlag"
															id="validFlag" class="form-control"
														value="${anchorPkConf.validFlag}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">生效时间</label>
													<div class="col-md-9">
														<input type="text" name="validTime"
															id="validTime" class="form-control"
														value="${anchorPkConf.validTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">添加时间</label>
													<div class="col-md-9">
														<input type="text" name="addTime"
															id="addTime" class="form-control"
														value="${anchorPkConf.addTime}"	maxlength="200" />
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
