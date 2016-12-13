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
import org.json.JSONException;
import org.json.JSONObject;

import DB.DBAccess;
import DB.mo.BlogMO;
import common.FuncString;

public class BlogHandler extends Handler{
	private static Logger logger = Logger.getLogger(BlogHandler.class);
	private static String bucketName = "hetang";
	private static String blogFile = "blogContent";

	private String error_11="11";//get connection successfully
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
	private void addBlog() throws ServletException, IOException{
		JSONObject jsonObject = new JSONObject();

		String errorCode="0";//successful
		String blogIdString="";
		String contentDesc = this.request.getParameter("contentDesc");
		if(!FuncString.isEmpty(contentDesc)){
			contentDesc = java.net.URLDecoder.decode(contentDesc,"UTF-8");
		}

		String sql="INSERT into blog(content,createTime) values(?,?)";
		Connection conn =null;
		ResultSet rs=null;
		PreparedStatement ps = null;
		DBAccess dbAccess =new DBAccess();
		try{
			conn = dbAccess.getConn();
			errorCode=error_11;
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setString(1, contentDesc);
			ps.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
			ps.executeUpdate();
			sql="select last_insert_id()";
			rs = ps.executeQuery(sql);
			while(rs.next()){
				blogIdString = rs.getString(1);
			}
			conn.commit();

		}catch(Exception e){
			errorCode="500";
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

		try {
			jsonObject.put("errorCode",errorCode);
			jsonObject.put("blogId",blogIdString);

		} catch (JSONException e) {
			errorCode="600";
		}
		this.response.setCharacterEncoding("UTF-8");
		PrintWriter pw=this.response.getWriter();
		pw.write(jsonObject.toString());
		pw.close();
		logger.debug("-->addBlogContent");
	}


	private void getListBlogs() throws Exception{

		JSONArray jsonArray = new JSONArray();

		//ArrayList<BlogMO> blog_rs_list=new ArrayList<BlogMO>();
		String sql="select * from blog";

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

				jsonArray.put(jsonObject);
			}
		}catch(Exception e){
			logger.error("-->getListBlogs exception");
			e.printStackTrace();
		}finally{
			DBAccess.closeRsAndPs(rs, st);
			if(conn!=null){
				conn.close();
			}
			conn=null;
		}

		this.response.setCharacterEncoding("UTF-8");
		PrintWriter pw=this.response.getWriter();
		pw.write( jsonArray!=null? jsonArray.toString() : "");
		pw.close();

	}

	private void deleteBlogById() throws Exception{
		JSONObject jsonObject = new JSONObject();

		String errorCode="0";
		String id = FuncString.toString(this.request.getParameter("id"));
		String sql="delete from blog where id= ?";

		Connection conn =null;
		PreparedStatement ps = null;
		DBAccess dbAccess =new DBAccess();
		try{
			conn = dbAccess.getConn();
			errorCode=this.error_11;
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			conn.commit();
		}catch(Exception e){
			errorCode="500";
			conn.rollback();
			logger.error("-->getListBlogs exception");
			e.printStackTrace();
		}finally{
			DBAccess.closeRsAndPs(null, ps);
			if(conn!=null){
				conn.close();
			}
			conn=null;
		}
		try {
			jsonObject.put("errorCode",errorCode);
		} catch (JSONException e) {
			errorCode="600";
		}

		this.response.setCharacterEncoding("UTF-8");
		PrintWriter pw=this.response.getWriter();
		pw.write(jsonObject.toString());
		pw.close();
	}
}
