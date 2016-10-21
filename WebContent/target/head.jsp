<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String pjtPath = request.getContextPath();
%>
<div class="header" >

    <div class="header-top">
        <div class="container">
            <div class="head-top">
                <div class="logo">
                    <h1><a href="#">禾唐</a></h1>
                    </br>
                    <h5>北京佳禾阳光科技发展有限公司</h5>
                </div>
                <div class="top-nav">
                    <span class="menu"><img src="<%=pjtPath%>/target/images/menu.png" alt=""> </span>

                    <ul>
                        <li class="active"><a class="color1" href="<%=pjtPath%>/target/index.jsp">首页</a></li>
                        <li><a class="color2" href="<%=pjtPath%>/target/games.jsp"  >产品</a></li>
                        <li><a class="color3" href="<%=pjtPath%>/target/company.jsp"  >公司介绍</a></li>
                        <li><a class="color6" href="<%=pjtPath%>/target/contact.jsp" >联系我们</a></li>
                        <div class="clearfix"> </div>
                    </ul>

                    <!--script-->
                    <script>
                        $("span.menu").click(function(){
                            $(".top-nav ul").slideToggle(500, function(){
                            });
                        });
                    </script>

                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>