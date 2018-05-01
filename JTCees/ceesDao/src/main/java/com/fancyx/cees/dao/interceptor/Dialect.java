/*
 * File : Dialect.java
 * date : Sep 18, 2012 9:48:34 AM
 */
package com.fancyx.cees.dao.interceptor;

import java.util.LinkedHashMap;

/**
* [添加说明]
* <br>User: yanghongfeng
* <br>DateTime: Sep 18, 2012 9:48:34 AM
* <br>Version 1.0
*/
public abstract class Dialect {
    /**
     *   enum类型的方法
     */
	public static enum Type {
		MYSQL, ORACLE
	}

    /**
     *   定义  abstract 方法
     * @param sql
     * @param skipResults
     * @param maxResults
     * @return
     */
	public abstract String getLimitString(String sql, int skipResults, int maxResults);

    /**
     * 定义  abstract 方法
     * @param sql
     * @param orderItems
     * @return
     */
	public abstract String getOrderString(String sql, LinkedHashMap<String, String> orderItems);

}
