package com;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.*;

/*数据库
 * Created by AAA on 2017/3/1 0001.
 */
public class Dao_outside {
    private ComboPooledDataSource cpds;
    private static Dao_outside single;

    public static Dao_outside getInstance() {
        if (single == null) {
            single = new Dao_outside();
        }
        return single;
    }

    private Dao_outside() {

        try {
            String property = System.getProperty("catalina.home");
            Properties pro = new Properties();
            InputStream in = null;
            String time = "0";
            in = new BufferedInputStream(new FileInputStream("F:\\Git\\cees\\SqlServerlDemo\\src\\main\\resources\\conn.properties"));
            pro.load(in);

            cpds = new ComboPooledDataSource();
            cpds.setDriverClass(pro.getProperty("DriverClass"));
            cpds.setJdbcUrl(pro.getProperty("JdbcUrl"));
            cpds.setUser(pro.getProperty("User"));
            cpds.setPassword(pro.getProperty("Password"));
            cpds.setMaxStatements(Integer.parseInt(pro.getProperty("MaxStatements")));
            cpds.setMaxPoolSize(Integer.parseInt(pro.getProperty("MaxPoolSize")));
            cpds.setMinPoolSize(Integer.parseInt(pro.getProperty("MinPoolSize")));
            cpds.setInitialPoolSize(Integer.parseInt(pro.getProperty("InitialPoolSize")));
            cpds.setAcquireIncrement(Integer.parseInt(pro.getProperty("AcquireIncrement")));
            cpds.setAutoCommitOnClose(Boolean.parseBoolean(pro.getProperty("AutoCommitOnClose")));
            cpds.setAcquireRetryAttempts(Integer.parseInt(pro.getProperty("AcquireRetryAttempts")));
            cpds.setIdleConnectionTestPeriod(Integer.parseInt(pro.getProperty("IdleConnectionTestPeriod")));
        } catch (Exception e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
    }

//    private Dao_outside() {
//        try {
//            cpds = new ComboPooledDataSource();
//            cpds.setDriverClass("org.apache.derby.jdbc.EmbeddedDriver");
//            cpds.setJdbcUrl("jdbc:derby:D:/code/derbytest/infos");
//            cpds.setUser("");
//            cpds.setPassword("");
//            cpds.setMaxStatements(180);
//            cpds.setMaxPoolSize(100);
//            cpds.setMinPoolSize(10);
//            cpds.setInitialPoolSize(3);
//            cpds.setAcquireIncrement(1);
//            cpds.setAutoCommitOnClose(true);
//            cpds.setAcquireRetryAttempts(30);
//            cpds.setIdleConnectionTestPeriod(1800);
//        } catch (Exception e) {
//            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
//        }
//    }
//    Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
//    Connection connection = DriverManager.getConnection("jdbc:derby:D:/code/derbytest/infos");


    public List queryForListObject(String sql) throws Exception {

        List list = null;
        Connection c = null;
        try {
            c = cpds.getConnection();
            PreparedStatement p = c.prepareStatement(sql);
            ResultSet rs = p.executeQuery();

            list = new ArrayList();
            while (rs.next()) {
                Object[] ob = new Object[rs.getMetaData().getColumnCount()];
                for (int j = 0; j < ob.length; j++) {
                    Object col = rs.getObject(j + 1);
                    if (col == null || "".equals(col) || "null".equals(col) || "Null".equals(col)) {
                        ob[j] = "";
                    } else {
                        ob[j] = col;
                    }
                }
                list.add(ob);
            }
            c.close();
        } catch (SQLException e) {
            return null;
        } finally {
            if (c != null) {
                try {
                    c.close();
                } catch (SQLException e) {
                    return null;
                }
            }
        }
        return list;
    }

    public List queryForListObject(Connection c, String sql) throws Exception {

        List list = null;
        PreparedStatement p = null;
        try {
            p = c.prepareStatement(sql);
            ResultSet rs = p.executeQuery();

            list = new ArrayList();
            while (rs.next()) {
                Object[] ob = new Object[rs.getMetaData().getColumnCount()];
                for (int j = 0; j < ob.length; j++) {
                    Object col = rs.getObject(j + 1);
                    if (col == null || "".equals(col) || "null".equals(col) || "Null".equals(col)) {
                        ob[j] = "";
                    } else {
                        ob[j] = col;
                    }
                }
                list.add(ob);
            }
        } catch (SQLException e) {
            return null;
        } finally {
            if (c != null) {
                try {
                    p.close();
                } catch (SQLException e) {
                    return null;
                }
            }
        }
        return list;
    }

    public List<Map<String, String>> queryForList(String sql) throws Exception {
        List<Map<String, String>> list = new ArrayList<Map<String, String>>();
        Connection c = null;
        PreparedStatement p = null;
        ResultSet rs = null;
        try {
            c = cpds.getConnection();
            p = c.prepareStatement(sql);
            rs = p.executeQuery();
            while (rs.next()) {
                ResultSetMetaData md = rs.getMetaData();
                int colNum = md.getColumnCount();
                Map<String, String> map = new HashMap<String, String>();
                for (int j = 1; j <= colNum; j++) {
                    String colName = md.getColumnLabel(j);
                    map.put(colName.toLowerCase(), rs.getString(colName));
                }
                list.add(map);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            if (null != rs) {
                rs.close();
            }
            if (null != p) {
                p.close();
            }
            if (c != null) {
                try {
                    c.close();
                } catch (SQLException e) {
                    throw e;
                }
            }
        }
        return list;
    }


    public List<Map<String, String>> queryForList(Connection c, String sql) throws Exception {
        List<Map<String, String>> list = new ArrayList<Map<String, String>>();
        PreparedStatement p = null;
        ResultSet rs = null;
        try {
            p = c.prepareStatement(sql);
            rs = p.executeQuery();
            while (rs.next()) {
                ResultSetMetaData md = rs.getMetaData();
                int colNum = md.getColumnCount();
                Map<String, String> map = new HashMap<String, String>();
                for (int j = 1; j <= colNum; j++) {
                    String colName = md.getColumnLabel(j);
                    map.put(colName, rs.getString(colName));
                }
                list.add(map);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (null != rs) {
                rs.close();
            }
            if (null != p) {
                p.close();
            }
        }
        return list;
    }

    public Map<String, String> queryForMap(Connection c, String sql) throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        PreparedStatement p = null;
        ResultSet rs = null;
        try {
            p = c.prepareStatement(sql);
            rs = p.executeQuery();
            while (rs.next()) {
                ResultSetMetaData md = rs.getMetaData();
                int colNum = md.getColumnCount();
                for (int j = 1; j <= colNum; j++) {
                    String colName = md.getColumnLabel(j);
                    map.put(colName, rs.getString(colName));
                }
                break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            if (null != rs) {
                rs.close();
            }
            if (null != p) {
                p.close();
            }
        }
        return map;
    }

    public Map<String, String> queryForMap(String sql) throws Exception {
        Map<String, String> map = new HashMap<String, String>();
        Connection c = null;
        PreparedStatement p = null;
        ResultSet rs = null;
        try {
            c = cpds.getConnection();
            p = c.prepareStatement(sql);
            rs = p.executeQuery();
            while (rs.next()) {
                ResultSetMetaData md = rs.getMetaData();
                int colNum = md.getColumnCount();
                for (int j = 1; j <= colNum; j++) {
                    String colName = md.getColumnLabel(j);
                    map.put(colName, rs.getString(colName));
                }
                break;
            }
        } catch (SQLException e) {
            return null;
        } finally {
            if (null != rs) {
                rs.close();
            }
            if (null != p) {
                p.close();
            }
            if (c != null) {
                try {
                    c.close();
                } catch (SQLException e) {
                    return null;
                }
            }
        }
        return map;
    }

    public int executeAndGetKey(Connection c, String sql) throws Exception {
        int autoIncKeyFromApi = -1;
        PreparedStatement p = null;
        ResultSet rs = null;
        try {
            p = c.prepareStatement(sql);
            p.executeUpdate(sql, p.RETURN_GENERATED_KEYS);
            rs = p.getGeneratedKeys();
            if (rs.next()) {
                autoIncKeyFromApi = rs.getInt(1);
            }
        } catch (SQLException e) {
            return -1;
        } finally {
            if (null != rs) {
                rs.close();
            }
            if (null != p) {
                p.close();
            }
        }
        return autoIncKeyFromApi;
    }

    public int executeAndGetKey(String sql) throws Exception {
        int autoIncKeyFromApi = -1;
        Connection c = null;
        PreparedStatement p = null;
        ResultSet rs = null;
        try {
            c = cpds.getConnection();
            p = c.prepareStatement(sql);
            p.executeUpdate(sql, p.RETURN_GENERATED_KEYS);
            rs = p.getGeneratedKeys();
            if (rs.next()) {
                autoIncKeyFromApi = rs.getInt(1);
            }
        } catch (SQLException e) {
            return -1;
        } finally {
            if (null != rs) {
                rs.close();
            }
            if (null != p) {
                p.close();
            }
            if (c != null) {
                try {
                    c.close();
                } catch (SQLException e) {
                    return -1;
                }
            }
        }
        return autoIncKeyFromApi;
    }

    private void reset() {
        try {
            cpds.close();
        } catch (Throwable e) {
        }
    }

    private Connection getConn() {
        Connection conn = null;
        try {
            conn = cpds.getConnection();
            if (conn.isClosed()) {
                reset();
                conn = cpds.getConnection();
            }
        } catch (Exception e) {
            e.printStackTrace();
            reset();
            try {
                conn = cpds.getConnection();
            } catch (Exception e1) {
                e.printStackTrace();
            }
        }
        return conn;
    }

    /**
     * 开启事务
     * <p/>
     * (1,2,4,8) 暂时默认强制为2 ,给入的参数无效,无特殊需求请传入参数为2
     * TRANSACTION_NONE 不支持事务
     * 1 TRANSACTION_READ_UNCOMMITTED  	允许脏读取、不可重复的读和虚读。
     * 2 TRANSACTION_READ_COMMITTED   	读取未提交的数据是不允许的。允许不可重复的读和虚读。
     * 4 TRANSACTION_REPEATABLE_READ   	事务保证能够再次读取相同的数据而不会失败，但虚读仍会出现。
     * 8 TRANSACTION_SERIALIZABLE  		防止脏读、不可重复的读和虚读。(串行,禁止并发,严重影响性能)
     */
    public Connection beginTransaction() {
        try {
            Connection conn = this.getConn();
            conn.setAutoCommit(false);
            return conn;
        } catch (Exception e) {
            return null;
        }
    }


    /**
     * 提交 仅开启事务时有效
     */
    public void commit(Connection conn) {
        try {
            if (conn != null) {
                conn.commit();
            }
            conn.setAutoCommit(true);
            conn.close();
        } catch (SQLException e) {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }

    /**
     * 回滚操作
     */
    public void rollback(Connection conn) {
        try {
            if (conn != null) {
                conn.rollback();
                conn.commit();
                conn.setAutoCommit(true);
                conn.close();
            }
        } catch (SQLException e) {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
    }

    public void execute(String sql) throws Exception {
        Connection conn = null;
        try {
            conn = this.getConn();
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    throw e;
                }
            }
        }
    }

    public void execute(Connection conn, String sql) throws SQLException {
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Object[] queryForObject(String sql) throws Exception {

        Object[] ob;
        Connection c = null;
        try {
            c = cpds.getConnection();
            PreparedStatement p = c.prepareStatement(sql);
            ResultSet rs = p.executeQuery();

            rs.next();
            ob = new Object[rs.getMetaData().getColumnCount()];
            for (int j = 0; j < ob.length; j++) {
                Object col = rs.getObject(j + 1);
                if (col == null || "".equals(col) || "null".equals(col) || "Null".equals(col)) {
                    ob[j] = "";
                } else {
                    ob[j] = col;
                }
            }

        } catch (SQLException e) {
            return null;
        } finally {
            if (c != null) {
                try {
                    c.close();
                } catch (SQLException e) {
                    return null;
                }
            }
        }
        return ob;
    }

}
