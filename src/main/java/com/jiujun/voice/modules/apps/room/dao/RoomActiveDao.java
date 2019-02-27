package com.jiujun.voice.modules.apps.room.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

import com.jiujun.voice.modules.apps.room.domain.RoomActive;
import com.jiujun.voice.common.jdbc.handle.JdbcHandle;

@Repository
public class RoomActiveDao {

	@Resource
	JdbcHandle jdbcHandle;
}