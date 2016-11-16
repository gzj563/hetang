package servlet.handler;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.servlet.ServletException;

import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import DB.DBAccess;
import DB.mo.BlogMO;
import common.FuncString;

public class BlogHandler extends Handler{
	private static Logger logger = Logger.getLogger(BlogHandler.class);
	private static String bucketName = "hetang";
	private static String blogFile = "blogContent";
	@Override
	public void execute() throws Exception {
		logger.debug("-->BlogHandler");
		String methodName =(String)this.request.getParameter("methodName");
		if(methodName!=null){
			logger.debug("methodName:"+methodName);
			if(methodName!=null){
				Method method =null;
				method = this.getClass().getDeclaredMethod(methodName);
				method.invoke(this);
			}
		}
	}
	private void getBlogs() throws Exception{
		
		JSONArray jsonArray = new JSONArray();
		
		//ArrayList<BlogMO> blog_rs_list=new ArrayList<BlogMO>();
		String sql="select * from blog where id=1";
		
		Connection conn =null;
		Statement st = null;
		ResultSet rs=null;
		DBAccess dbAccess =new DBAccess();
		JSONObject jsonObject = null;
		try{
			conn = dbAccess.getConn();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()){
				jsonObject = new JSONObject();
				jsonObject.put(BlogMO.ID, rs.getString(BlogMO.ID));
				jsonObject.put(BlogMO.CONTENT, rs.getString(BlogMO.CONTENT));
				//blogMo.setId(rs.getString(blogMo.ID));

				//jsonArray.put(jsonObject);
			}
		}catch(Exception e){
			logger.error("-->getBlogs exception");
			e.printStackTrace();
		}finally{
			DBAccess.closeRsAndPs(rs, st);
			if(conn!=null){
				conn.close();
			}
			conn=null;
		}
		
		this.response.setCharacterEncoding("gbk");
		PrintWriter pw=this.response.getWriter();
		pw.write( jsonObject!=null? jsonObject.toString() : "");
		pw.close();
		logger.debug("-->addBlogContent");
		
	}
	private void updateBlogContent() throws ServletException, IOException{
		String messageString="1";
		String contentDesc = this.request.getParameter("contentDesc");
		if(!FuncString.isEmpty(contentDesc)){
			contentDesc = java.net.URLDecoder.decode(contentDesc,"UTF-8");
		}
		
		String errorMsg="&#x6570;&#x636E;&#x4FDD;&#x5B58;&#x5931;&#x8D25;";
		String sql="update blog set content= ? ,createTime= ?";
		Connection conn =null;
		PreparedStatement ps = null;
		DBAccess dbAccess =new DBAccess();
		try{

			conn = dbAccess.getConn();
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setString(1, contentDesc);
			ps.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
			ps.executeUpdate();
			conn.commit();
			errorMsg="&#x6570;&#x636E;&#x4FDD;&#x5B58;&#x6210;&#x529F;";
		}catch(Exception e){
			errorMsg="数�?��?存�?�生异常";
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBAccess.closeRsAndPs(null, ps);
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			conn=null;
		}
		this.response.setCharacterEncoding("gbk");
		PrintWriter pw=this.response.getWriter();
		pw.write(errorMsg);
		pw.close();
		logger.debug("-->addBlogContent");
	}
	

}
