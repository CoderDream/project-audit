package com.billjc.util;

/**
 * 常量类
 * 
 * @author xulin28709
 *
 */
public class Constants {

	public static final String ENCODING = "utf-8";

	/** yyyy-MM-dd */
	public static final String SIMPLE_DATE_FORMAT = "yyyy-MM-dd";

	/** yyyy-MM-dd HH:mm:ss:SSS */
	public static final String COMPLEX_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss:SSS";

	/** yyyyMMddHHmmssSSS */
	public static final String COMPLEX_DATE_FORMAT2 = "yyyyMMddHHmmssSSS";

	public static final String BASE_URL = "http://localhost:10086/common-rbac/function/";

	/** 目标合理性 */
	public static final String REASONABLE_OBJECTIVE_INFO = "ReasonableObjectiveInfo";

	/** 操作规范性 */
	public static final String OPERATION_STANDARD_INFO = "OperationStandardInfo";

	/** 数据准确性 */
	public static final String ACCURATE_DATA_INFO = "AccurateDataInfo";

	/**
	 * 81=audit:* 82=audit:create 83=audit:update 84=audit:delete 85=audit:view
	 */
	public static final String AUDIT_ALL = "audit:*";

	/**
	 * 81=audit:* 82=audit:create 83=audit:update 84=audit:delete 85=audit:view
	 */
	public static final String AUDIT_CREATE = "audit:create";

	/**
	 * 81=audit:* 82=audit:create 83=audit:update 84=audit:delete 85=audit:view
	 */
	public static final String AUDIT_UPDATE = "audit:update";

	/**
	 * 81=audit:* 82=audit:create 83=audit:update 84=audit:delete 85=audit:view
	 */
	public static final String AUDIT_DELETE = "audit:delete";

	/**
	 * 81=audit:* 82=audit:create 83=audit:update 84=audit:delete 85=audit:view
	 */
	public static final String AUDIT_VIEW = "audit:view";

}
