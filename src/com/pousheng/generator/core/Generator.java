package com.pousheng.generator.core;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.pousheng.generator.database.model.Table;
import com.pousheng.generator.template.model.TemplateModel;
import com.pousheng.generator.utils.FileUtil;
import com.pousheng.generator.utils.FreeMarkerUtil;
import com.pousheng.generator.utils.PropertiesUtil;
import com.pousheng.generator.utils.StringUtil;
import com.pousheng.generator.utils.TemplateModelUtil;

import freemarker.cache.ClassTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;

public class Generator {

	public static String TEMPLATE_ROOT_DIR = ""; // 模板文件的路径

	public static Boolean IS_FORM_JAR_PACKAGE = true; // 模板文件是否是来自jar包中

	// 生成文件
	protected void generateFile(Configuration config, Table table, List<File> templateFiles) {
		System.out.println("#############-------------开始生成代码-----------#############");
		try {
			for (File templateFile : templateFiles) {
				String templateRelativePath = templateFile.getName();
				if (templateFile.isDirectory() || templateFile.isHidden())
					continue;
				if (templateRelativePath.equals(""))
					continue;
				Template template = config.getTemplate(templateRelativePath);
				Map<String, Object> templateModelData = TemplateModelUtil.getTemplateModelMap(table);
				File targetFile = getTargetFile(table, templateModelData, templateRelativePath);
				if (!StringUtil.isNullOrEmpty(targetFile)) {
					System.out.println("#############---模板文件---> " + templateRelativePath + " ----生成----> " + targetFile.getPath());
					String result = FreeMarkerUtil.renderTemplate(template, templateModelData);
					if (templateRelativePath.endsWith(".properties")) {
						FileUtil.writeStringToFile(targetFile, result, true);
					} else {
						FileUtil.writeStringToFile(targetFile, result, false);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("#############-------------代码生成结束-----------#############");
	}

	// 获取要生成的文件路径和名称
	protected File getTargetFile(Table table, Map<String, Object> templateModelData, String templateRelativePath) {
		String filePath = "";
		File targetFile = null;
		String targetFileName = geTargetFileName(templateModelData, templateRelativePath);
		TemplateModel templateModel = table.getTemplateModel();
		if (PropertiesUtil.DAO_FLAG && targetFileName.endsWith("Dao.java")) {
			filePath = PropertiesUtil.JAVA_ROOT_PATH + "/" + templateModel.getDaoPackage();
		} else if (targetFileName.endsWith("DaoImpl.java")) {
			filePath = PropertiesUtil.JAVA_ROOT_PATH + "/" + templateModel.getDaoPackage()+".impl";
		}  else if (PropertiesUtil.XML_FLAG && targetFileName.endsWith("SqlMapping.xml")) {
			filePath = PropertiesUtil.RESOURCES_ROOT_PATH + "/" + templateModel.getXmlPackage();
		} else if (PropertiesUtil.SERVICE_FLAG && targetFileName.endsWith("Service.java")) {
			filePath = PropertiesUtil.JAVA_ROOT_PATH + "/" + templateModel.getServicePackage();
		} else if (PropertiesUtil.SERVICEIMPL_FLAG && targetFileName.endsWith("ServiceImpl.java")) {
			filePath = PropertiesUtil.JAVA_ROOT_PATH + "/" + templateModel.getServiceImplPackage();
		} else if (PropertiesUtil.CONTROLLER_FLAG && targetFileName.endsWith("Controller.java")) {
			filePath = PropertiesUtil.JAVA_ROOT_PATH + "/" + templateModel.getControllerPackage();
		} else if (PropertiesUtil.MODEL_FLAG && targetFileName.endsWith(templateModelData.get("className") + ".java")) {
			filePath = PropertiesUtil.JAVA_ROOT_PATH + "/" + templateModel.getModelPackage();
		} else if (PropertiesUtil.JSP_FLAG && targetFileName.endsWith(".jsp")) {
			filePath =templateModel.getJspPath();
		} else if (PropertiesUtil.JAVASCRIPT_FLAG && targetFileName.endsWith(".js")) {
			filePath = templateModel.getJavaScriptPath();
		} else if ( targetFileName.endsWith("add.ftl")) {
			filePath =templateModel.getJspPath();
		} else if ( targetFileName.endsWith("edit.ftl")) {
			filePath =templateModel.getJspPath();
		} else if ( targetFileName.endsWith("list.ftl")) {
			filePath =templateModel.getJspPath();
		} else if ( targetFileName.endsWith("view.ftl")) {
			filePath =templateModel.getJspPath();
		} else if (PropertiesUtil.I18N_FLAG && targetFileName.endsWith(".properties")) {
			filePath = PropertiesUtil.I18N_PATH;
			Boolean flag = false;
			for (File i18nFile : PropertiesUtil.I18N_FILES) {
				String i18nFileName = i18nFile.getName();
				if (i18nFileName.endsWith(targetFileName)) {
					targetFileName = i18nFile.getName();
					flag = true;
					break;
				}
			}
			if (!flag) {
				return null;
			}

		}
		if (!StringUtil.isNullOrEmpty(filePath)) {
			filePath = getTargetFilePath(filePath);
			targetFile = new File(filePath, targetFileName);
			return targetFile;
		}
		return targetFile;
	}

	protected String geTargetFileName(Map<String, Object> templateModelData, String templateRelativePath) {
		//CarParkRecordDao.ftl
		String targetFileName = TemplateModelUtil.renderFileName(templateModelData, templateRelativePath);
		if(!targetFileName.equals("add.ftl")
				&&!targetFileName.equals("edit.ftl")
				&&!targetFileName.equals("list.ftl")
				&&!targetFileName.equals("view.ftl")){
//			if(targetFileName.split("Dao").length >1 && targetFileName.split("Impl").length <=1) {
//				targetFileName = targetFileName;
//			} else if(targetFileName.split("Service").length >1 && targetFileName.split("Impl").length <=1) {
//				targetFileName = targetFileName;
//			}
			targetFileName = StringUtil.replace(targetFileName, ".ftl", ".java");
		}
		//CarParkRecordDao.ftl
		return targetFileName;
	}

	protected String getTargetFilePath(String path) {
		return System.getProperty("user.dir") + "/" + StringUtil.replace(path, ".", "/");
	}

	/**
	 * Freemark的根文件夹配置
	 * 
	 * @return
	 */
	protected Configuration buildConfiguration() {
		Configuration config = new Configuration();
		try {
			if (IS_FORM_JAR_PACKAGE) {
				config.setTemplateLoader(new ClassTemplateLoader(this.getClass(), TEMPLATE_ROOT_DIR));
			} else {
				config.setDirectoryForTemplateLoading(new File(TEMPLATE_ROOT_DIR).getAbsoluteFile());
			}
			config.setNumberFormat("###############");
			config.setBooleanFormat("true,false");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return config;
	}

	/**
	 * 获取模板文件
	 * 
	 * @return
	 */
	protected List<File> getTemplateFiles(String[] templateFilesArray) {
		List<File> templateFiles = new ArrayList<File>();
		try {
			if (IS_FORM_JAR_PACKAGE) {
				for (String fileName : templateFilesArray) {
					templateFiles.add(new File(fileName));
				}
			} else {
				FileUtil.listFiles(new File(TEMPLATE_ROOT_DIR).getAbsoluteFile(), templateFiles);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return templateFiles;
	}

}
