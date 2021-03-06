package com.pousheng.generator.utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

/**
 * 文件操作工具类
 * 
 * @author yongan.quan
 * 
 */
public class FileUtil extends FileUtils {

	public static String getRelativePath(File baseDir, File file) {
		if (baseDir.equals(file))
			return "";
		if (baseDir.getParentFile() == null)
			return file.getAbsolutePath().substring(baseDir.getAbsolutePath().length());
		return file.getAbsolutePath().substring(baseDir.getAbsolutePath().length() + 1);
	}

	public static void listFiles(File file, List<File> collector) throws IOException {
		collector.add(file);
		if ((!file.isHidden() && file.isDirectory()) && !isIgnoreFile(file)) {
			File[] subFiles = file.listFiles();
			for (int i = 0; i < subFiles.length; i++) {
				listFiles(subFiles[i], collector);
			}
		}
	}

	private static boolean isIgnoreFile(File file) {
		List<String> ignoreList = new ArrayList<String>();
		ignoreList.add(".svn");
		ignoreList.add("CVS");
		ignoreList.add(".git");
		for (int i = 0; i < ignoreList.size(); i++) {
			if (file.getName().equals(ignoreList.get(i))) {
				return true;
			}
		}
		return false;
	}
}
