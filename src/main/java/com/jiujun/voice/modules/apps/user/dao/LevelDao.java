package com.jiujun.voice.modules.apps.user.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

import com.jiujun.voice.modules.apps.user.domain.Level;
import com.jiujun.voice.common.jdbc.handle.JdbcHandle;

@Repository
public class LevelDao {

	@Resource
	JdbcHandle jdbcHandle;
}