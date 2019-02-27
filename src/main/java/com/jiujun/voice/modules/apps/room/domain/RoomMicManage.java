package com.jiujun.voice.modules.apps.room.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_room_mic_manage
*/
@SuppressWarnings("serial")
@DBTable("t_room_mic_manage")
public class RoomMicManage extends BaseModel {
	
	private Integer id;
	/**
	 * 房间id
	 */
	private String roomId;
	/**
	 * 麦位（主位为1，其他依次升序,1~9）
	 */
	private Byte seat;
	/**
	 * 麦位状态，1-禁麦，2-锁麦
	 */
	private Byte status;
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
	public Byte getSeat() {
		return this.seat;
	}
	
	public void setSeat(Byte seat) {
		this.seat = seat;
	}
	public Byte getStatus() {
		return this.status;
	}
	
	public void setStatus(Byte status) {
		this.status = status;
	}
	public java.sql.Timestamp getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
}
