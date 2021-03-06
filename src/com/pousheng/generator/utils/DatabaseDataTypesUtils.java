package com.pousheng.generator.utils;

import java.sql.Types;
import java.util.HashMap;

/**
 * 描述数据库类型和java类型对应关系
 */
public class DatabaseDataTypesUtils {

	private final static IntStringMap _preferredJavaTypeForSqlType = new IntStringMap();

	public static boolean isFloatNumber(int sqlType, int size, int decimalDigits) {
		String javaType = getPreferredJavaType(sqlType, size, decimalDigits);
		if (javaType.endsWith("Float") || javaType.endsWith("Double") || javaType.endsWith("BigDecimal")) {
			return true;
		}
		return false;
	}

	public static boolean isIntegerNumber(int sqlType, int size, int decimalDigits) {
		String javaType = getPreferredJavaType(sqlType, size, decimalDigits);
		if (javaType.endsWith("Long") || javaType.endsWith("Integer") || javaType.endsWith("Short")) {
			return true;
		}
		return false;
	}

	public static boolean isDate(int sqlType, int size, int decimalDigits) {
		String javaType = getPreferredJavaType(sqlType, size, decimalDigits);
		if (javaType.endsWith("Date") || javaType.endsWith("Timestamp")) {
			return true;
		}
		return false;
	}

	public static String getPreferredJavaType(int sqlType, int size, int decimalDigits) {
		if ((sqlType == Types.DECIMAL || sqlType == Types.NUMERIC) && decimalDigits == 0) {
			if (size == 1) {
				return "Boolean";
			} else if (size < 3) {
				return "Byte";
			} else if (size < 5) {
				return "Short";
			} else if (size < 12) {
				return "Integer";
			} else if (size < 19) {
				return "Long";
			} else {
				return "java.math.BigDecimal";
			}
		}
		String result = _preferredJavaTypeForSqlType.getString(sqlType);
		if (result == null) {
			result = "Object";
		}
		return result;
	}

	static {
		_preferredJavaTypeForSqlType.put(Types.TINYINT, "Byte");
		_preferredJavaTypeForSqlType.put(Types.SMALLINT, "Short");
		_preferredJavaTypeForSqlType.put(Types.INTEGER, "Integer");
		_preferredJavaTypeForSqlType.put(Types.BIGINT, "Integer");
		// _preferredJavaTypeForSqlType.put(Types.INTEGER, "Long");
		// _preferredJavaTypeForSqlType.put(Types.BIGINT, "Long");
		_preferredJavaTypeForSqlType.put(Types.REAL, "Float");
		_preferredJavaTypeForSqlType.put(Types.FLOAT, "Double");
		_preferredJavaTypeForSqlType.put(Types.DOUBLE, "Double");
		_preferredJavaTypeForSqlType.put(Types.DECIMAL, "java.math.BigDecimal");
		_preferredJavaTypeForSqlType.put(Types.NUMERIC, "java.math.BigDecimal");
		_preferredJavaTypeForSqlType.put(Types.BIT, "Boolean");
		_preferredJavaTypeForSqlType.put(Types.CHAR, "String");
		_preferredJavaTypeForSqlType.put(Types.VARCHAR, "String");
		// according to resultset.gif, we should use java.io.Reader, but String
		// is more convenient for EJB
		_preferredJavaTypeForSqlType.put(Types.LONGVARCHAR, "String");
		_preferredJavaTypeForSqlType.put(Types.BINARY, "byte[]");
		_preferredJavaTypeForSqlType.put(Types.VARBINARY, "byte[]");
		_preferredJavaTypeForSqlType.put(Types.LONGVARBINARY, "java.io.InputStream");
		_preferredJavaTypeForSqlType.put(Types.DATE, "java.util.Date");
		_preferredJavaTypeForSqlType.put(Types.TIME, "java.sql.Time");
		_preferredJavaTypeForSqlType.put(Types.TIMESTAMP, "java.sql.Timestamp");
		_preferredJavaTypeForSqlType.put(Types.CLOB, "java.sql.Clob");
		_preferredJavaTypeForSqlType.put(Types.BLOB, "java.sql.Blob");
		_preferredJavaTypeForSqlType.put(Types.ARRAY, "java.sql.Array");
		_preferredJavaTypeForSqlType.put(Types.REF, "java.sql.Ref");
		_preferredJavaTypeForSqlType.put(Types.STRUCT, "Object");
		_preferredJavaTypeForSqlType.put(Types.JAVA_OBJECT, "Object");
	}

	private static class IntStringMap extends HashMap<Integer, Object> {
		private static final long serialVersionUID = -7201506678664108412L;

		public String getString(int i) {
			return (String) get(new Integer(i));
		}

		public void put(int i, String s) {
			put(new Integer(i), s);
		}

	}

}
