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
		[@sidebar pattern="admin:lotteryUserPoint"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑用户积分表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/lotteryUserPoint/list.jhtml">用户积分表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">用户积分表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/lotteryUserPoint/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${lotteryUserPoint.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">用户</label>
													<div class="col-md-9">
														<input type="text" name="userId"
															id="userId" class="form-control"
														value="${lotteryUserPoint.userId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">当前积分</label>
													<div class="col-md-9">
														<input type="text" name="point"
															id="point" class="form-control"
														value="${lotteryUserPoint.point}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">状态，默认1-正常，0-禁用</label>
													<div class="col-md-9">
														<input type="text" name="useStatus"
															id="useStatus" class="form-control"
														value="${lotteryUserPoint.useStatus}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">添加时间</label>
													<div class="col-md-9">
														<input type="text" name="addTime"
															id="addTime" class="form-control"
														value="${lotteryUserPoint.addTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">修改时间</label>
													<div class="col-md-9">
														<input type="text" name="modifyTime"
															id="modifyTime" class="form-control"
														value="${lotteryUserPoint.modifyTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">备注</label>
													<div class="col-md-9">
														<input type="text" name="comment"
															id="comment" class="form-control"
														value="${lotteryUserPoint.comment}"	maxlength="200" />
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
