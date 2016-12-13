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
        var action='<%=projectPath%>/HandlerManager?handler=blogHandler&methodName=getListBlogs&date='+new Date();
        dataType: "text" //ajax 返回 文件 类型
        $.ajax({
            url: action,
            method: 'get',
            success: function(jsonStr,status){
                if(jsonStr){
                    var jsons = eval('('+jsonStr+ ')');
                    blogDiv = $(".single-inline")[0];
                    if(blogDiv){
                        $(blogDiv).empty();
                    }
                    $.each(jsons,function(index,blog){
                        if(blog.content){
                            var fillStr =
                                    "<div class='blog-to'>"
                                    +"   <div class='blog-top'>"
                                    +"        <div class='top-blog'>"
                                    +           blog.content
                                    +"          </div>"
                                    +"          <div class='clearfix'> </div>"
                                    +"    </div>"
                                    +"</div>"

                            $(blogDiv).prepend(fillStr);
                        }
                    });
                }
            }
        });
    });
</script>

<!--inner-page-blog-->
<div class="blog">
    <div class="container">
        <h3>最新时事</h3>
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