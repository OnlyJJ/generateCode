package com.pousheng.generator.core;

import java.io.File;
import java.util.List;

import javax.swing.JOptionPane;

import com.pousheng.generator.constant.TemplateFiles;
import com.pousheng.generator.constant.TemplateType;
import com.pousheng.generator.core.model.TableVO;
import com.pousheng.generator.database.DbUtils;
import com.pousheng.generator.database.model.Table;
import com.pousheng.generator.utils.StringUtil;
import com.pousheng.generator.utils.TemplateModelUtil;

import freemarker.template.Configuration;

public class GeneratorOneTable extends Generator {

	public GeneratorOneTable() {
		TEMPLATE_ROOT_DIR = "/codetemplate/onetable";
		IS_FORM_JAR_PACKAGE = true;
	}

	public void generatorOneTable(TableVO tableVO) {
		Configuration config = buildConfiguration();
		try {
			Table table = DbUtils.getInstance().getTable(tableVO.getTableName()); //直接读取数据库表的数据
			table.setClassName(tableVO.getClassName());
			table.setTemplateModel(TemplateModelUtil.getTemplateModel(tableVO));
			List<File> templateFiles = getTemplateFiles(TemplateFiles.TEMLPATE_FILE);
			generateFile(config, table, templateFiles); // 生成单表
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		
		
		
		String tableName="t_gym_category";
		
		
		try {
			TableVO tableVO = new TableVO();
			
			String s = tableName;
		    String s1=s;
			for (int i = 0; i < s.length(); i++) {
			if(s.substring(i, i+1).equals("_")){
				if(i+3< s.length()){
				s1=s1.substring(0,i+1)+
						s1.substring(i+1, i+2).toUpperCase()
				+s1.substring(i+2);
			
				}
			}
				
			}
			s1=s1.replace("t_", "").replace("_", "");

			tableVO.setPackageName(s1.substring(0, 1).toLowerCase()+s1.substring(1));
			tableVO.setClassName(s1);
			tableVO.setTableName(tableName);
			tableVO.setTemplateType(TemplateType.MODEL);
			
			GeneratorOneTable generator = new GeneratorOneTable();
			generator.generatorOneTable(tableVO);
			System.err.println("完成");
		} catch (Exception e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "生成代码失败，请查看控制的错误信息。", "失败提示", JOptionPane.ERROR_MESSAGE);
		}
	}
}
