package com.jiujun.voice.modules.apps.user.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

import com.jiujun.voice.modules.apps.user.domain.DrawJewelRecord;
import com.jiujun.voice.common.jdbc.handle.JdbcHandle;

@Repository
public class DrawJewelRecordDao {

	@Resource
	JdbcHandle jdbcHandle;
}