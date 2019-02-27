package com.jiujun.voice.modules.apps.room.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_room_active
* 激活房间记录表（搜索和首先显示）
*/
@SuppressWarnings("serial")
@DBTable("t_room_active")
public class RoomActive extends BaseModel {
	
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 房主用户id
	 */
	private String userId;
	/**
	 * 房间id
	 */
	private String roomId;
	/**
	 * 房间名称（修改房间时，同步修改此名称）
	 */
	private String roomName;
	/**
	 * 搜索状态，1-可被搜索，0-不能被搜索
	 */
	private Byte searchFlag;
	/**
	 * 显示状态，0-首页不显示，1-显示
	 */
	private Byte showFlag;
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
	public String getRoomId() {
		return this.roomId;
	}
	
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomName() {
		return this.roomName;
	}
	
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public Byte getSearchFlag() {
		return this.searchFlag;
	}
	
	public void setSearchFlag(Byte searchFlag) {
		this.searchFlag = searchFlag;
	}
	public Byte getShowFlag() {
		return this.showFlag;
	}
	
	public void setShowFlag(Byte showFlag) {
		this.showFlag = showFlag;
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
