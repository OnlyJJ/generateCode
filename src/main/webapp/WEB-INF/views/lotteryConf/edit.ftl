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
		[@sidebar pattern="admin:lotteryConf"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑抽奖配置表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/lotteryConf/list.jhtml">抽奖配置表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">抽奖配置表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/lotteryConf/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${lotteryConf.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">标题</label>
													<div class="col-md-9">
														<input type="text" name="title"
															id="title" class="form-control"
														value="${lotteryConf.title}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">消费类型（目前以积分形式抽奖：1）</label>
													<div class="col-md-9">
														<input type="text" name="consumeType"
															id="consumeType" class="form-control"
														value="${lotteryConf.consumeType}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">抽奖一次，所花费的数量（积分或其他）</label>
													<div class="col-md-9">
														<input type="text" name="consumeNum"
															id="consumeNum" class="form-control"
														value="${lotteryConf.consumeNum}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">抽奖次数，默认1次，可配置多次</label>
													<div class="col-md-9">
														<input type="text" name="frequency"
															id="frequency" class="form-control"
														value="${lotteryConf.frequency}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">启用状态，默认0-未启用，1-启用</label>
													<div class="col-md-9">
														<input type="text" name="is_use"
															id="is_use" class="form-control"
														value="${lotteryConf.is_use}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">开始时间</label>
													<div class="col-md-9">
														<input type="text" name="beginTime"
															id="beginTime" class="form-control"
														value="${lotteryConf.beginTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">结束时间</label>
													<div class="col-md-9">
														<input type="text" name="endTime"
															id="endTime" class="form-control"
														value="${lotteryConf.endTime}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">抽奖说明</label>
													<div class="col-md-9">
														<input type="text" name="content"
															id="content" class="form-control"
														value="${lotteryConf.content}"	maxlength="200" />
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
