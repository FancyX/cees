package com.fancyx.cees.dao;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
* [MyBatis 基础DAO 封装]
* @author: qiaomu
* @date: 2013-9-4 下午04:13:37
* @version: 1.0
 */
public abstract class BaseDao<T extends Object> extends SqlSessionDaoSupport {

	/**
	 * 新增对象
	 *
	 * @param classMethod ： MyBatis xml 配置文件中的SQL - Key
	 * @param entity      ： 需要进行新增的Bean对象
	 * @return true ： 成功   false ： 失败
	 * @throws org.springframework.dao.DataAccessException
	 */
	public boolean insert(String classMethod, T entity) throws DataAccessException {
		boolean flag = false;
		try {
			flag = this.getSqlSession().insert(classMethod, entity) > 0 ? true : false;
		} catch (DataAccessException e) {
			flag = false;
			throw e;
		}
		return flag;
	}
	
	/**
	 * 批量新增对象
	 *
	 * @param classMethod ： MyBatis xml 配置文件中的SQL - Key
	 * @param entity      ： 需要进行批量新增的BeanList对象
	 * @return true ： 成功   false ： 失败
	 * @throws org.springframework.dao.DataAccessException
	 */
	public boolean insertBanch(String classMethod, List<T> entity) throws DataAccessException {
		boolean flag = false;
		try {
			flag = this.getSqlSession().insert(classMethod, entity) > 0 ? true : false;
		} catch (DataAccessException e) {
			flag = false;
			throw e;
		}
		return flag;
	}

	/**
	 * 更新数据
	 *
	 * @param classMethod ： MyBatis xml 配置文件中的SQL - Key
	 * @param entity      ： 需要进行更新的Bean对象
	 * @return true ： 成功   false ： 失败
	 * @throws org.springframework.dao.DataAccessException
	 */
	public boolean update(String classMethod, T entity) throws DataAccessException {
		boolean flag = false;
		try {
			flag = this.getSqlSession().update(classMethod, entity) > 0 ? true : false;
		} catch (DataAccessException e) {
			flag = false;
			throw e;
		}
		return flag;
	}

	/**
	 * 查询一条记录
	 *
	 * @param classMethod ： MyBatis xml 配置文件中的SQL - Key
	 * @param entity      ： 查询参数对象，可以是自定义的查询对象
	 * @return 返回一个对象
	 * @throws org.springframework.dao.DataAccessException
	 */
	public Object queryCountForObject(String classMethod, Object entity) throws DataAccessException {
		Object result = null;
		try {
			result = (Object) this.getSqlSession().selectOne(classMethod, entity);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public T queryForObject(String classMethod) throws DataAccessException {
		T result = null;
		try {
			result = (T) this.getSqlSession().selectOne(classMethod);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	public Map queryForMap(String classMethod,String mapKey) throws DataAccessException {
		Map result = null;
		try {
			result = this.getSqlSession().selectMap(classMethod,mapKey);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	public T queryForObject(String classMethod, T entity) throws DataAccessException {
		T result = null;
		try {
			result = (T) this.getSqlSession().selectOne(classMethod, entity);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}



	/**
	 * 支持排序、分页的列表查询
	 * @param statementName
	 * @param countStatementName
	 * @param pageRequest
	 * @param entity 仅支持实体和Map类型
	 * @return
	 */
	public PageBean<T> pageQuery(String statementName, String countStatementName, PageBean<T> pageRequest, Object entity) {
		try {
			if (entity == null) {
				return pageQuery(statementName, countStatementName, pageRequest, null);
			} else if (entity instanceof Map) {
				return pageQuery(statementName, countStatementName, pageRequest, (Map<?, ?>) entity);
			} else {
				return pageQuery(statementName, countStatementName, pageRequest, DataTransferUtil.voToMap(entity));
			}
		} catch (IllegalAccessException e) {
			throw new RuntimeException(e);
		} catch (InvocationTargetException e) {
			throw new RuntimeException(e);
		} catch (NoSuchMethodException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 支持排序、分页的列表查询
	 * @param statementName
	 * @param countStatementName
	 * @param pageRequest
	 * @param entity
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	private PageBean<T> pageQuery(String statementName, String countStatementName, PageBean<T> pageRequest, Map<?, ?> entity) {

		int totalCount = (Integer) queryCountForObject(countStatementName, entity);
		if (totalCount == 0) {
			return new PageBean<T>();
		}

		Map filter = new HashMap();
		if (entity != null) {
			filter.putAll(entity);
		}
		//_sorts名固定写法，与com.jd.las.im.baseBeans.dao.interceptor.PaginationInterceptor中进行映射
		filter.put("_sorts", pageRequest.getSortItemMap());

		List<T> list = this.getSqlSession().selectList(statementName, filter,
				new RowBounds((pageRequest.getPage() - 1) * pageRequest.getPageSize(), pageRequest.getPageSize()));
		PageBean<T> pageResponse = new PageBean<T>(pageRequest.getPage(), totalCount, pageRequest.getPageSize());
		pageResponse.addAll(list);

		return pageResponse;
	}

	/**
	 * 查询一组记录
	 *
	 * @param classMethod ： MyBatis xml 配置文件中的SQL - Key
	 * @param entity      查询参数对象，可以是自定义的查询对象
	 * @return 返回一组对象
	 * @throws org.springframework.dao.DataAccessException
	 */
	public List<T> queryForList(String classMethod, T entity) throws DataAccessException {
		List<T> result = null;
		try {
			result = this.getSqlSession().selectList(classMethod, entity);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}

	public List<T> queryListByObject(String classMethod, Object entity) throws DataAccessException {
		List<T> result = null;
		try {
			result = this.getSqlSession().selectList(classMethod, entity);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}

	/**
	 * 查询一组记录
	 *
	 * @param classMethod ： MyBatis xml 配置文件中的SQL - Key
	 * @return 返回一组对象
	 * @throws org.springframework.dao.DataAccessException
	 */
	public List<T> queryForList(String classMethod) throws DataAccessException {
		List<T> result = null;
		try {
			result = this.getSqlSession().selectList(classMethod);
		} catch (DataAccessException e) {
			throw e;
		}
		return result;
	}

	/**
	 * 删除记录
	 *
	 * @param classMethod : MyBatis xml 配置文件中的SQL - Key
	 * @param entity      可以传入需要删除的记录对象,也可以只传入一个ID字段，可以根据SQL语句自行组合
	 * @return ： 成功   false ： 失败
	 * @throws Exception
	 */
	public boolean delete(String classMethod, T entity) throws DataAccessException {
		boolean flag = false;
		try {
			flag = this.getSqlSession().delete(classMethod, entity) > 0 ? true : false;
		} catch (DataAccessException e) {
			flag = false;
			throw e;
		}
		return flag;
	}

	public List<T> selectList(String statement, Object parameter) {

		return this.getSqlSession().selectList(statement, parameter);
	}
}
