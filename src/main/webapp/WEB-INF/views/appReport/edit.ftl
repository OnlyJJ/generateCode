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
		[@sidebar pattern="admin:appReport"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑app用户行为数据统计表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/appReport/list.jhtml">app用户行为数据统计表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">app用户行为数据统计表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/appReport/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${appReport.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">用户id</label>
													<div class="col-md-9">
														<input type="text" name="userId"
															id="userId" class="form-control"
														value="${appReport.userId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">设备uuid</label>
													<div class="col-md-9">
														<input type="text" name="uuid"
															id="uuid" class="form-control"
														value="${appReport.uuid}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">操作类型(0-登录,1-首页停留,2-直播间停留,3-签到)</label>
													<div class="col-md-9">
														<input type="text" name="operateType"
															id="operateType" class="form-control"
														value="${appReport.operateType}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">停留时间(如首页停留、直播间停留)</label>
													<div class="col-md-9">
														<input type="text" name="stayTime"
															id="stayTime" class="form-control"
														value="${appReport.stayTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">登录方式(游客、账号、QQ(web/app)、微博(web/qq)、微信)</label>
													<div class="col-md-9">
														<input type="text" name="loginType"
															id="loginType" class="form-control"
														value="${appReport.loginType}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">登录时间</label>
													<div class="col-md-9">
														<input type="text" name="loginTime"
															id="loginTime" class="form-control"
														value="${appReport.loginTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">注册时间</label>
													<div class="col-md-9">
														<input type="text" name="registeTime"
															id="registeTime" class="form-control"
														value="${appReport.registeTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">app应用安装时间</label>
													<div class="col-md-9">
														<input type="text" name="appinstallTime"
															id="appinstallTime" class="form-control"
														value="${appReport.appinstallTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">记录添加时间</label>
													<div class="col-md-9">
														<input type="text" name="createTime"
															id="createTime" class="form-control"
														value="${appReport.createTime}"	maxlength="200" />
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
