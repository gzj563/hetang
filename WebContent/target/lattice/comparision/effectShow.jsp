
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
	String pjtPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>效果展示</title>
</head>


<body>
<!--header-->
<jsp:include   page="../../head.jsp" flush="true"/>


<meta http-equiv="pragma" content="pragma">
<meta http-equiv="cache-control" content="public">

<link rel="stylesheet" type="text/css" href="bootstrap.css">
<!-- FontAwesome Styles-->
<link rel="stylesheet" type="text/css" href="font-awesome.css">
<link href="morris-0.4.3.min.css" rel="stylesheet" />
<!-- Custom Styles-->
<link href="custom-styles.css" rel="stylesheet" />
<!--/. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
	<div id="sideNav" href="" style="margin-top: 20px"><i class="fa fa-caret-right"></i></div>
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">

			<li>
				<a class="active-menu" href="effectShow.jsp">施用效果</a>
			</li>


			<li>
				<a href="#">检测报告<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li>
						<a href="testReport-strawberry.jsp">草莓</a>
					</li>
					<li>
						<a href="testReport-grape.jsp">葡萄</a>
					</li>
					<li>
						<a href="testReport-tea.jsp">茶叶</a>
					</li>
				</ul>
			</li>
		</ul>

	</div>

</nav>

<div id="page-wrapper">
	<div id="page-inner">

		<div class="row">
			<div class="col-md-12">
				<h1 class="page-header">
				施用效果展示	 <small>丰收</small>
				</h1>

			</div>
		</div>


		<!-- /. ROW  -->

		<div class="row">
			<div style="text-align: center;width:100%;margin-top: 10px;">
				<img src="image/effect1.jpg" style="width:100%;">
			</div>
			<div class="clear"></div>
		</div>
		<div class="row">
			<div style="text-align: center;width:100%;margin-top: 10px;">
				<img src="image/effect2.jpg" style="width:100%;">
			</div>
			<div class="clear"></div>
		</div>
		<div class="row">
			<div style="text-align: center;width:100%;margin-top: 10px;">
				<img src="image/effect3.jpg" style="width:100%;">
			</div>
			<div class="clear"></div>
		</div>
		<div class="row">
			<div style="text-align: center;width:100%;margin-top: 10px;">
				<img src="image/effect4.jpg" style="width:100%;">
			</div>
			<div class="clear"></div>
		</div>
		<div class="row">
			<div style="text-align: center;width:100%;margin-top: 10px;">
				<img src="image/effect5.jpg" style="width:100%;">
			</div>
			<div class="clear"></div>
		</div>

	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<script src="jquery.metisMenu.js"></script>
<script src="bootstrap.min.js"></script>
<script src="custom-scripts.js"></script>

<!-- foot 版权和一些链接信息-->
<!-- footer -->
<jsp:include   page="../../footer.jsp" flush="true"/>
<!-- footer -->

</body>
</html>