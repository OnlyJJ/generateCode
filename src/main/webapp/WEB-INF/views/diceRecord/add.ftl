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
		[@sidebar pattern="admin:diceRecord"][#include "/admin/include/sidebar.ftl"][/@sidebar]
		<div class="page-content-wrapper">
			<div class="page-content">

				<div class="page-head">

					<div class="page-title">
						<h1>
							<i class="icon-grid" style="font-size: 20px;"></i>&nbsp;添加猜大小游戏记录表
						</h1>
					</div>

					[#include "/admin/include/setting.ftl"]
				</div>

				<ul class="page-breadcrumb breadcrumb">
					<li><a href="${base}/admin/common/main.jhtml">首页</a>
						<i class="fa fa-circle"></i></li>
					<li><a href="${base}/admin/diceRecord/list.jhtml">猜大小游戏记录表管理</a><i
						class="fa fa-circle"></i></li>
					<li><a href="javascript:;">添加猜大小游戏记录表</a></li>
				</ul>

				<div class="row">
					<div class="col-md-12">
						<div class="portlet light bordered">
							<div class="portlet-body form">
								<!-- BEGIN FORM-->
								<form id="inputForm"
									action="${base}/admin/diceRecord/save.jhtml"
									method="post" class="form-horizontal">
									<div class="form-body">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">房间id<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="roomId"
															id="roomId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">用户id<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="userId"
															id="userId" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">位置，1号，2号，3号等等<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="site"
															id="site" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">身份，0闲，1庄<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="identity"
															id="identity" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">位置状态，0空闲，1占领（待准备），2押注（已准备）<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="siteFlag"
															id="siteFlag" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">游戏状态，0进行中，1退出，2结束<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="gameStatus"
															id="gameStatus" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">抢位时间<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="grapTime"
															id="grapTime" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">押注类型，0-小，1-大<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="stakeType"
															id="stakeType" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">押注倍数<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="multiple"
															id="multiple" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">押注时间<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="stakeTime"
															id="stakeTime" class="form-control"
															maxlength="200" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="control-label col-md-3">结束时间<span class="required" aria-required="true"> * </span></label>
													<div class="col-md-9">
														<input type="text" name="endTime"
															id="endTime" class="form-control"
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
                                roomId:{ required: true},
                                userId:{ required: true},
                                site:{ required: true},
                                identity:{ required: true},
                                siteFlag:{ required: true},
                                gameStatus:{ required: true},
                                grapTime:{ required: true},
                                stakeType:{ required: true},
                                multiple:{ required: true},
                                stakeTime:{ required: true},
                                endTime:{required: true}
						}
					});
				});
			</script>
</body>
</html>
