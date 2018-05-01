/*
 * File : PageBean.java
 * date : Sep 28, 2012 8:16:16 PM
 */
package com.fancyx.cees.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;

/**
* [添加说明]
* <br>User: yanghongfeng
* <br>DateTime: Sep 28, 2012 8:16:16 PM
* <br>Version 1.0
*/
public class PageBean<T> implements Serializable {

    /**
     * 序列化
     */
	private static final long serialVersionUID = -3284694395882955584L;

    /**
     * 默认每页记录数
     */
	public static final int DEFAULT_PAGESIZE = 30;

	/**
	 * 当前页
	 */
	private final int page;

	/**
	 * 每页记录数
	 */
	private final int pageSize;

	/**
	 * 总记录数
	 */
	private final int itemCount;

	/**
	 * 总页数
	 */
	private final int pageCount;

	/**
	 * 排序 MAP
	 */
	private LinkedHashMap<String, String> sortItemMap;

	/**
	 * 数据列表
	 */
	private List<T> underly;

    /**
     * 获取排序信息
     * @return 排序 MAP
     */
	public LinkedHashMap<String, String> getSortItemMap() {
		return sortItemMap;
	}

    /**
     * 设置排序信息
     * @param sortItemMap 排序参数
     */
	public void setSortItemMap(LinkedHashMap<String, String> sortItemMap) {
		this.sortItemMap = sortItemMap;
	}

    /**
     * 构造方法
     */
	public PageBean() {
		this(1, 0, DEFAULT_PAGESIZE);
	}

    /**
     * 构造方法
     */
	public PageBean(int page) {
		this(page, 0, DEFAULT_PAGESIZE);
	}

    /**
     * 构造方法
     */
	public PageBean(int page, int pageSize) {
		this(page, 0, pageSize);
	}

    /**
     * 构造方法
     */
	public PageBean(int page, int itemCount, int pageSize) {
		if (page <= 0) {
			page = 1;
		}
		if (pageSize <= 0) {
			pageSize = DEFAULT_PAGESIZE;
		}
		if (itemCount < 0) {
			itemCount = 0;
		}
		this.page = page;
		this.pageSize = pageSize;
		this.itemCount = itemCount;
		this.pageCount = (int) Math.ceil(((double) itemCount / (double) pageSize));
		this.underly = new ArrayList<T>(pageSize);
	}

    /**
     * 获取 itemCount的值
     * @return  总记录数
     */
	public int getItemCount() {
		return itemCount;
	}

    /**
     *  获取 pageSize的值
     * @return 每页记录数
     */
	public int getPageSize() {
		return pageSize;
	}

    /**
     * 获取 page的值
     * @return 当前页
     */
	public int getPage() {
		return page;
	}

    /**
     * 获取 pageCount的值
     * @return 总页数
     */
	public int getPageCount() {
		return pageCount;
	}

    /**
     * 分页索引 （开始）
     * @return 分页索引值
     */
	public int getStartIndex() {
		return (page - 1) * pageSize + 1;
	}

    /**
     * 分页索引 （结束）
     * @return 分页索引值
     */
	public int getEndIndex() {
		int end = page * pageSize;
		if (end > itemCount) {
			end = itemCount;
		}
		return end;
	}

    /**
     * 获得查询的数据列表
     * @return  查询的数据列表
     */
	public List<T> getUnderly() {
		return underly;
	}

    /**
     * 设置underly的值
     * @param underly
     */
	public void setUnderly(List<T> underly) {
		this.underly = underly;
	}

    /**
     * 装载查询列表
     * @param c
     * @return true:参加成功 false:参加失败
     */
	public boolean addAll(Collection<? extends T> c) {
		return underly.addAll(c);
	}
}
