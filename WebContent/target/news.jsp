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
    	
        var htmlObj = $.ajax({
            url:"<%=projectPath%>/target/blogContent.txt",
            async:false,

        });//$.ajax() 返回其创建的 XMLHttpRequest 对象
        if(htmlObj.responseText){
            blogDiv = $(".single-inline")[0];
            if(blogDiv){
                $(blogDiv).prepend(htmlObj.responseText);
            }
        }
        
        
        
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