package com.jiujun.voice.modules.apps.jewel.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

import com.jiujun.voice.modules.apps.jewel.domain.CardInfo;
import com.jiujun.voice.common.jdbc.handle.JdbcHandle;

@Repository
public class CardInfoDao {

	@Resource
	JdbcHandle jdbcHandle;
}