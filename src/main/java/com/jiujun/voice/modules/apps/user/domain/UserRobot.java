package com.jiujun.voice.modules.apps.user.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_user_robot
* 机器人用户表
*/
@SuppressWarnings("serial")
@DBTable("t_user_robot")
public class UserRobot extends BaseModel {
	
	private Integer id;
	/**
	 * 用户id
	 */
	private String userId;
	/**
	 * 昵称
	 */
	private String nickName;
	/**
	 * 头像
	 */
	private String icon;
	/**
	 * 年龄
	 */
	private Byte age;
	/**
	 * 性别，0-女，1-男
	 */
	private Byte sex;
	private String birth;
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
	public String getNickName() {
		return this.nickName;
	}
	
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getIcon() {
		return this.icon;
	}
	
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public Byte getAge() {
		return this.age;
	}
	
	public void setAge(Byte age) {
		this.age = age;
	}
	public Byte getSex() {
		return this.sex;
	}
	
	public void setSex(Byte sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return this.birth;
	}
	
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public java.sql.Timestamp getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
}
