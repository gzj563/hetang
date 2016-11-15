<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>最新时事</title>
</head>

<%
    String projectPath=request.getContextPath();
%>

<body>
<!--header-->
<jsp:include   page="head.jsp" flush="true"/>

<script type="text/javascript">

    $(window).load(function() {
    	
    	var action='<%=projectPath%>/HandlerManager?handler=blogHandler&methodName=getBlogs&date='+new Date();
        dataType: "text" //ajax 返回 文件 类型
        $.ajax({
            url: action,
            method: 'get',
            success: function(jsonStr,status){
            	if(jsonStr){
            		var json = eval('('+jsonStr+ ')');
            		blogDiv = $(".single-inline")[0];
                    if(blogDiv){
                        $(blogDiv).prepend(json.content);
                    }
            	}
            	
            }
        });
    });
</script>

<!--inner-page-blog-->
<div class="blog">
    <div class="container">
        <h3>Blogs</h3>
        <div class="single-inline">


        </div>
    </div>
</div>
<!-- //blog -->

</div>
</div>
<!--/inner-page-blog-->


<jsp:include   page="footer.jsp" flush="true"/>

</body>
</html>