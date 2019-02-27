package com.jiujun.voice.modules.apps.room.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

import com.jiujun.voice.modules.apps.room.domain.RoomRecommend;
import com.jiujun.voice.common.jdbc.handle.JdbcHandle;

@Repository
public class RoomRecommendDao {

	@Resource
	JdbcHandle jdbcHandle;
}