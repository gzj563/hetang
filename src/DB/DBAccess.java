package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.log4j.Logger;

import common.SysConfiguration;

public class DBAccess {
	private static Logger logger = Logger.getLogger(DBAccess.class);
	public Connection getConn(){
		if ("BAE".equals(SysConfiguration.getConfigParam("dbLocation"))) {
			return this.getBAEConn();
		}else if("SAE".equals(SysConfiguration.getConfigParam("dbLocation"))){
			return this.getSAEConn();
		}else{
			return this.getLocalConn();
		}
		
	}
	private Connection getLocalConn(){
		logger.debug("->DBAccess.getLocalConn");
		String dbDriver = SysConfiguration.getConfigParam("dbDriver");   
		// app_helloworld20141116Ϊ����app���ݿ�����
		String dbUrl = SysConfiguration.getConfigParam("dbUrl"); 
		String dbUser = SysConfiguration.getConfigParam("dbUserID"); 
		String dbPassword = SysConfiguration.getConfigParam("dbPasswd"); 
		Connection con = null;
		try{
			Class.forName(dbDriver);
			con=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
			logger.debug("get local connection successfully");
		}catch(Exception e){
			logger.debug("get local connection failed");
			e.printStackTrace();
		}
		logger.debug("DBAccess.getLocalConn-->");
		return con;
	}
	private Connection getBAEConn(){
		Connection connection = null;

		/*****填写数据库相关信息(请查找数据库详情页)*****/
        String username = SysConfiguration.getConfigParam("bae_AccessKeyID"); //用户AK
        String password = SysConfiguration.getConfigParam("bae_AccessKey"); //用户SK
        String driverName = "com.mysql.jdbc.Driver";

        String connName = SysConfiguration.getConfigParam("bae_dbUrl");
        try {

            /******接着连接并选择数据库名为databaseName的服务器******/
            Class.forName(driverName);
            connection = DriverManager.getConnection(connName, username,
                    password);
            logger.debug("get bae connection successfully");
        } catch (Exception e) {
        	logger.debug("get bae connection failed");
			e.printStackTrace();
        }
        return connection;
	}
	private Connection getSAEConn(){
		logger.debug("->DBAccess.getSAEConn");
		String dbDriver = SysConfiguration.getConfigParam("dbDriver"); 

		String dbUrl = SysConfiguration.getConfigParam("sae_dbUrl"); 
		String dbUser = SysConfiguration.getConfigParam("sae_dbUserID"); 
		String dbPassword = SysConfiguration.getConfigParam("sae_dbPasswd"); 
		Connection con = null;
		try{
			Class.forName(dbDriver);
			con=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
			logger.debug("get sae connection successfully");
		}catch(Exception e){
			logger.debug("get sae connection failed");
			e.printStackTrace();
		}
		logger.debug("DBAccess.getSAEConn-->");
		return con;
	}
	public static void closeRsAndPs(ResultSet rs, Statement st)
	{
		try
		{
			if (rs != null)
			{
				rs.close();
			}
			rs = null;
		} catch (Exception e)
		{
		}
		try
		{
			if (st != null)
			{
				st.close();
			}
			st = null;
		} catch (Exception e)
		{
		}
	}
}
