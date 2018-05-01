/*
 * File : OracleDialect.java
 * date : Sep 18, 2012 9:54:04 AM
 */
package com.fancyx.cees.dao.interceptor;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

/**
* [添加说明]
* <br>User: yanghongfeng
* <br>DateTime: Sep 18, 2012 9:54:04 AM
* <br>Version 1.0
*/
public class OracleDialect extends Dialect {
     protected static final int CONSTANT = 100;
	/* (non-Javadoc)  
	 * @see org.mybatis.extend.interceptor.IDialect#getLimitString(java.lang.String, int, int)  
	 */
	@Override
	public String getLimitString(String sql, int offset, int limit) {
		sql = sql.trim();
		//StringBuffer pagingSelect = new StringBuffer(sql.length() + 100);
        StringBuffer pagingSelect = new StringBuffer(sql.length() + CONSTANT);
		pagingSelect.append("select * from ( select row_.*, rownum rownum_ from ( ");
		pagingSelect.append(sql);
		pagingSelect.append(" ) row_ ) where rownum_ > ").append(offset).append(" and rownum_ <= ").append(offset + limit);
		return pagingSelect.toString();
	}

	@Override
	public String getOrderString(String originalSql, LinkedHashMap<String, String> orderItems) {
		String ex = "";
		if(orderItems!=null&&orderItems.size()>0){
			Iterator<Entry<String,String>> it = orderItems.entrySet().iterator();
			while(it.hasNext()){
				Entry<String,String> entry = it.next();
				ex = ex + "," + entry.getKey() + " " + entry.getValue();
			}
		}
		
		if(ex.trim().length()>0){
			if(ex.startsWith(",")){
				ex = ex.substring(1);
			}
			return originalSql + " order by " + ex;
		}
		
		return originalSql;
	}
}
