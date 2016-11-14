<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String pjtPath = request.getContextPath();
%>

<link href="<%=pjtPath%>/target/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=pjtPath%>/target/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="<%=pjtPath%>/target/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Games Center Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--//fonts-->
<script src="<%=pjtPath%>/target/js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css" href="<%=pjtPath%>/target/css/component.css" />




<div class="header" >
    <div class="header-top" style="background:darkseagreen;">
        <div class="container">
            <div class="head-top" >
                <div class="logo">
                    <h1><a href="#">禾唐</a></h1>
                    </br>
                    <h5>北京佳禾阳光科技发展有限公司</h5>
                </div>
                <div class="top-nav">
                    <span class="menu"><img src="<%=pjtPath%>/target/images/menu.png" alt=""> </span>

                    <ul>
                        <li class="active"><a class="color1" href="<%=pjtPath%>/target/index.jsp">首页</a></li>
                        <li><a class="color6" href="<%=pjtPath%>/target/effectDemo.jsp" >效果展示</a></li>
                        <li><a class="color2" href="<%=pjtPath%>/target/games.jsp"  >产品</a></li>
                        <li><a class="color3" href="<%=pjtPath%>/target/company.jsp"  >公司介绍</a></li>
                        <li><a class="color4" href="<%=pjtPath%>/target/news.jsp"  >最新时事</a></li>
                        <li><a class="color4" href="<%=pjtPath%>/target/newsEditor.jsp" >时事编辑</a></li>
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