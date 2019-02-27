package com.pousheng.generator.constant;

public class TemplateFiles {

	//主表
	public static final String[] TEMLPATE_FILE = {"${className}Dao.ftl", 
			"${className}Service.ftl","${className}ServiceImpl.ftl",
			"${className}.ftl",
			
			};
	
	//字表
	public static final String[] SUB_TEMLPATE_FILE ={"${className}Dao.ftl","${className}Dao.xml","${className}.ftl","${classNameLowerCase}_edit.jsp","en_US.properties","zh_HK.properties","zh_TW.properties"};

	//主从表
	public static final String[] MASTER_DETAIL_TEMLPATE_FILE ={"${className}Dao.ftl","${className}Dao.xml","${className}.ftl"};
	
	//中间表
	public static final String[] MIDDLETABLE_TEMLPATE_FILE ={"${className}Dao.ftl","${className}Dao.xml","${className}.ftl"};
}
