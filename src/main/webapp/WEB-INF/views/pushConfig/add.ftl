﻿[#assign shiro=JspTaglibs["/WEB-INF/tld/shiro.tld"] /]
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
		[@sidebar pattern="admin:pushConfig"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;添加
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/pushConfig/list.jhtml">管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">添加</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/pushConfig/save.jhtml"
									method="post" class="form-horizontal">
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">app应用注册信鸽生成id<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="accessId"
															id="accessId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">app应用注册信鸽生成的密钥<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="secretKey"
															id="secretKey" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">客户端类型 3-IOS；0-Android；默认0<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="appType"
															id="appType" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">app包名<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="pckName"
															id="pckName" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">启用状态，1-启用，0-停用<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="useStatus"
															id="useStatus" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">添加时间<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="addTime"
															id="addTime" class="form-control"
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
                                accessId:{ required: true},
                                secretKey:{ required: true},
                                appType:{ required: true},
                                pckName:{ required: true},
                                useStatus:{ required: true},
                                addTime:{required: true}
						}
					});
				});
			</script>
</body>
</html>
