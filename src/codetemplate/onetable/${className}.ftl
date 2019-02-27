<#include "common.ftl">  
package ${base_package}.domain;

import com.jiujun.voice.common.jdbc.annotation.DBTable;
import com.jiujun.voice.common.model.BaseModel;

/**
* ${table.tableName}
<#if table.tableRemark !="">
* ${table.tableRemark}
</#if>
*/
@SuppressWarnings("serial")
@DBTable("${table.tableName}")
public class ${className} extends BaseModel {
	<@generateFields/>
}
<#macro generateFields>
	
	<#list table.columns as column>
	<#if column.comment!="">
	/**
	 * ${column.comment}
	 */
	</#if>
	private ${column.javaType} ${column.columnNameLowerCase};
	</#list>
	
	<#list table.columns as column>
	public ${column.javaType} get${column.columnName}() {
		return this.${column.columnNameLowerCase};
	}
	
	public void set${column.columnName}(${column.javaType} ${column.columnNameLowerCase}) {
		this.${column.columnNameLowerCase} = ${column.columnNameLowerCase};
	}
	</#list>
</#macro>