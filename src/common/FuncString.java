package common;


public class FuncString {
	public static boolean isEmpty(Object tarObj){
		if(tarObj != null && tarObj.toString().length()>0){
			return false;
		}
		return true;
	}

    public static String toString(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj.toString();
    }

    public static String toHTMLString(Object obj) {
        if (obj == null) {
            return "&nbsp;";
        }
        if (obj.toString().equals("")) {
            return "&nbsp;";
        }
        return obj.toString();
    }


    
}
