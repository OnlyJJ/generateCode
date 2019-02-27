package com.jiujun.voice.modules.apps.user.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_draw_jewel
* 我的收益汇总表
*/
@SuppressWarnings("serial")
@DBTable("t_draw_jewel")
public class DrawJewel extends BaseModel {
	
	private Integer id;
	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 总共提取的钻石（总收益）
	 */
	private Integer totalJewel;
	/**
	 * 更新时间
	 */
	private java.sql.Timestamp updateTime;
	/**
	 * 创建时间user
	 */
	private java.sql.Timestamp createTime;
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserId() {
		return this.userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Integer getTotalJewel() {
		return this.totalJewel;
	}
	
	public void setTotalJewel(Integer totalJewel) {
		this.totalJewel = totalJewel;
	}
	public java.sql.Timestamp getUpdateTime() {
		return this.updateTime;
	}
	
	public void setUpdateTime(java.sql.Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public java.sql.Timestamp getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
}
