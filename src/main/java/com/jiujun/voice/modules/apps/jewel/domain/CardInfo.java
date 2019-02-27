package com.jiujun.voice.modules.apps.jewel.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* t_card_info
* 绑定银行卡信息
*/
@SuppressWarnings("serial")
@DBTable("t_card_info")
public class CardInfo extends BaseModel {
	
	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 手机号（与账号表对应）
	 */
	private String mobile;
	/**
	 * 银行卡号
	 */
	private String cardNO;
	/**
	 * 开户人
	 */
	private String owner;
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
	public String getMobile() {
		return this.mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getCardNO() {
		return this.cardNO;
	}
	
	public void setCardNO(String cardNO) {
		this.cardNO = cardNO;
	}
	public String getOwner() {
		return this.owner;
	}
	
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public java.sql.Timestamp getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(java.sql.Timestamp createTime) {
		this.createTime = createTime;
	}
}
