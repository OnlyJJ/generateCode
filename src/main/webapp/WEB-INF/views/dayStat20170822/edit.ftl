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
		[@sidebar pattern="admin:dayStat20170822"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑每日统计数据表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/dayStat20170822/list.jhtml">每日统计数据表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">每日统计数据表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/dayStat20170822/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${dayStat20170822.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">客户端类型,0-android,1-IOS</label>
													<div class="col-md-9">
														<input type="text" name="clientType"
															id="clientType" class="form-control"
														value="${dayStat20170822.clientType}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">平台id</label>
													<div class="col-md-9">
														<input type="text" name="platformId"
															id="platformId" class="form-control"
														value="${dayStat20170822.platformId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">添加时间，yyyyMMddHH</label>
													<div class="col-md-9">
														<input type="text" name="addtime"
															id="addtime" class="form-control"
														value="${dayStat20170822.addtime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">手机卡标识</label>
													<div class="col-md-9">
														<input type="text" name="uuid"
															id="uuid" class="form-control"
														value="${dayStat20170822.uuid}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">登录帐号</label>
													<div class="col-md-9">
														<input type="text" name="userAccount"
															id="userAccount" class="form-control"
														value="${dayStat20170822.userAccount}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">渠道id</label>
													<div class="col-md-9">
														<input type="text" name="channelId"
															id="channelId" class="form-control"
														value="${dayStat20170822.channelId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">产品id</label>
													<div class="col-md-9">
														<input type="text" name="productId"
															id="productId" class="form-control"
														value="${dayStat20170822.productId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">SDK版本</label>
													<div class="col-md-9">
														<input type="text" name="version"
															id="version" class="form-control"
														value="${dayStat20170822.version}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否登录，1-是; 0-否</label>
													<div class="col-md-9">
														<input type="text" name="isLogin"
															id="isLogin" class="form-control"
														value="${dayStat20170822.isLogin}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否安装，1-是; 0-否</label>
													<div class="col-md-9">
														<input type="text" name="isAdd"
															id="isAdd" class="form-control"
														value="${dayStat20170822.isAdd}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否注册，1-是; 0-否</label>
													<div class="col-md-9">
														<input type="text" name="isReg"
															id="isReg" class="form-control"
														value="${dayStat20170822.isReg}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否激活，1-是; 0-否</label>
													<div class="col-md-9">
														<input type="text" name="isAct"
															id="isAct" class="form-control"
														value="${dayStat20170822.isAct}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">留存天数，例如: 1、3、7</label>
													<div class="col-md-9">
														<input type="text" name="retention"
															id="retention" class="form-control"
														value="${dayStat20170822.retention}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">是否有效 用户，1是,0否</label>
													<div class="col-md-9">
														<input type="text" name="isVaild"
															id="isVaild" class="form-control"
														value="${dayStat20170822.isVaild}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">有效用户留存天数如1，3，7，</label>
													<div class="col-md-9">
														<input type="text" name="retentionVaild"
															id="retentionVaild" class="form-control"
														value="${dayStat20170822.retentionVaild}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">douid</label>
													<div class="col-md-9">
														<input type="text" name="douId"
															id="douId" class="form-control"
														value="${dayStat20170822.douId}"	maxlength="200" />
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
