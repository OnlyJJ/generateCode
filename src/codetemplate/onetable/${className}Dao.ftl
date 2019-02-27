<#include "common.ftl">  
package ${base_package}.dao;

import javax.annotation.Resource;
import org.springframework.stereotype.Repository;

import ${base_package}.domain.${className};
import com.jiujun.voice.common.jdbc.handle.JdbcHandle;

@Repository
public class ${className}Dao {

	@Resource
	JdbcHandle jdbcHandle;
}