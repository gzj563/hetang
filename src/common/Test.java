package common;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import DB.DBAccess;


public class Test {

	public static void main(String[] args) throws JSONException {
		
		SysConfiguration sysConfiguration = new SysConfiguration();
		sysConfiguration.init();
		DBAccess db= new DBAccess();
		db.getConn();
		// TODO Auto-generated method stub
		JSONArray jsonArray = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("name", "name1");
		jsonArray.put(jsonObject);
		JSONObject jsonObject1 = new JSONObject();
		jsonObject1.put("name", "name2");
		jsonArray.put(jsonObject1);
		
		System.out.println(jsonObject.toString());
		System.out.println(jsonArray.toString());
	}

}
