package com.jiujun.voice.modules.apps.user.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_draw_jewel_record
* 钻石提取流水记录表
*/
@SuppressWarnings("serial")
@DBTable("t_draw_jewel_record")
public class DrawJewelRecord extends BaseModel {
	
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 正在提取钻石数（每笔）
	 */
	private Integer drawJewel;
	/**
	 * 提取状态，0-审核中，1-成功，2-失败
	 */
	private Byte status;
	/**
	 * 更新时间
	 */
	private java.sql.Timestamp updateTime;
	/**
	 * 创建时间
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
	public Integer getDrawJewel() {
		return this.drawJewel;
	}
	
	public void setDrawJewel(Integer drawJewel) {
		this.drawJewel = drawJewel;
	}
	public Byte getStatus() {
		return this.status;
	}
	
	public void setStatus(Byte status) {
		this.status = status;
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
