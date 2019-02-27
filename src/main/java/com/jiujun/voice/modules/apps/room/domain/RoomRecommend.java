package com.jiujun.voice.modules.apps.room.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_room_recommend
* 房间推荐表
*/
@SuppressWarnings("serial")
@DBTable("t_room_recommend")
public class RoomRecommend extends BaseModel {
	
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 房间id
	 */
	private String roomId;
	/**
	 * 排序，越大越靠前
	 */
	private Integer sort;
	/**
	 * 状态，0-无效，1-有效
	 */
	private Byte status;
	/**
	 * 开始时间
	 */
	private java.sql.Timestamp beginTime;
	/**
	 * 结束时间
	 */
	private java.sql.Timestamp endTime;
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
	public String getRoomId() {
		return this.roomId;
	}
	
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public Integer getSort() {
		return this.sort;
	}
	
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public Byte getStatus() {
		return this.status;
	}
	
	public void setStatus(Byte status) {
		this.status = status;
	}
	public java.sql.Timestamp getBeginTime() {
		return this.beginTime;
	}
	
	public void setBeginTime(java.sql.Timestamp beginTime) {
		this.beginTime = beginTime;
	}
	public java.sql.Timestamp getEndTime() {
		return this.endTime;
	}
	
	public void setEndTime(java.sql.Timestamp endTime) {
		this.endTime = endTime;
	}
	public java.sql.Timestamp getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
}
