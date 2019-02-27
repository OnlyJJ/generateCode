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
		[@sidebar pattern="admin:lotteryPrizeConf"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;编辑抽奖奖品配置表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/lotteryPrizeConf/list.jhtml">抽奖奖品配置表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">抽奖奖品配置表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/lotteryPrizeConf/update.jhtml"
									method="post" class="form-horizontal">
									<input type="hidden" name="id" value="${lotteryPrizeConf.id}" />
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">抽奖配置表id（t_lottery_conf）</label>
													<div class="col-md-9">
														<input type="text" name="confId"
															id="confId" class="form-control"
														value="${lotteryPrizeConf.confId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">奖品概率对应的百分比</label>
													<div class="col-md-9">
														<input type="text" name="rate"
															id="rate" class="form-control"
														value="${lotteryPrizeConf.rate}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">0:座驾,1:礼物,2:工具,3:勋章,4:金币</label>
													<div class="col-md-9">
														<input type="text" name="type"
															id="type" class="form-control"
														value="${lotteryPrizeConf.type}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">奖品id,如:座驾carId,礼物giftId,金币:id指定为0</label>
													<div class="col-md-9">
														<input type="text" name="prizeId"
															id="prizeId" class="form-control"
														value="${lotteryPrizeConf.prizeId}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">奖品对应的数量，默认1个</label>
													<div class="col-md-9">
														<input type="text" name="prizeNum"
															id="prizeNum" class="form-control"
														value="${lotteryPrizeConf.prizeNum}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">奖品名称</label>
													<div class="col-md-9">
														<input type="text" name="prizeName"
															id="prizeName" class="form-control"
														value="${lotteryPrizeConf.prizeName}"	maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">奖品详细描述</label>
													<div class="col-md-9">
														<input type="text" name="prizeDesc"
															id="prizeDesc" class="form-control"
														value="${lotteryPrizeConf.prizeDesc}"	maxlength="200" />
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
