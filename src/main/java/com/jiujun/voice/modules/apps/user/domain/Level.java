package com.jiujun.voice.modules.apps.user.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_level
* 等级表
*/
@SuppressWarnings("serial")
@DBTable("t_level")
public class Level extends BaseModel {
	
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 类型，1-财富等级，2-魅力等级
	 */
	private Byte type;
	/**
	 * 等级名称
	 */
	private String name;
	/**
	 * 等级，默认从0开始
	 */
	private Integer level;
	/**
	 * 等级对应所需经验值
	 */
	private Integer exp;
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	public Byte getType() {
		return this.type;
	}
	
	public void setType(Byte type) {
		this.type = type;
	}
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public Integer getLevel() {
		return this.level;
	}
	
	public void setLevel(Integer level) {
		this.level = level;
	}
	public Integer getExp() {
		return this.exp;
	}
	
	public void setExp(Integer exp) {
		this.exp = exp;
	}
}
