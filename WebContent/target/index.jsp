<%--
  Created by IntelliJ IDEA.
  User: jet
  Date: 2016/3/20
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
	String pjtPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
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
</head>
<body> 
<!--header-->	
<div class="header" >

		<div class="header-top">
		<div class="container">
		<div class="head-top">
			<div class="logo">
				<h1><a href="#">禾唐</a></h1>
                <h5>北京佳禾阳光科技发展有限公司</h5>
			</div>
		<div class="top-nav">
			  <span class="menu"><img src="<%=pjtPath%>/target/images/menu.png" alt=""> </span>

					<ul>
						<li class="active"><a class="color1" href="#"  >首页</a></li>
						<li><a class="color2" href="<%=pjtPath%>/target/games.html"  >产品</a></li>
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
<!--banner-->

	<div class="banner">
		<div class="container">
		  <div class="wmuSlider example1">
			   <div class="wmuSliderWrapper">
			 <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	<div class="banner-wrap">
						<div class="banner-top">
							<img src="<%=pjtPath%>/target/images/12.jpg" class="img-responsive" alt="">
						</div>
						  <div class="banner-top banner-bottom">
							<img src="<%=pjtPath%>/target/images/11.jpg" class="img-responsive" alt="">
						</div>
				   		 <div class="clearfix"> </div>
				   	 </div>
				   
			</article>
			 <article style="position: absolute; width: 100%; opacity: 0;"> 
				   		<div class="banner-wrap">

						<div class="banner-top">
							<img src="<%=pjtPath%>/target/images/14.jpg" class="img-responsive" alt="">
						</div>
						  <div class="banner-top banner-bottom">
							<img src="<%=pjtPath%>/target/images/13.jpg" class="img-responsive" alt="">
						</div>
				   		 <div class="clearfix"> </div>
						
				   	 </div>
			</article>
			 <article style="position: absolute; width: 100%; opacity: 0;"> 
				   		<div class="banner-wrap">
							<div class="banner-top">
							<img src="<%=pjtPath%>/target/images/16.jpg" class="img-responsive" alt="">
						</div>
						  <div class="banner-top banner-bottom">
							<img src="<%=pjtPath%>/target/images/15.jpg" class="img-responsive" alt="">
						</div>

				   		 <div class="clearfix"> </div>
				   	 </div>
			</article>
			</div>
			 <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                </ul>
		</div>
		<!---->
		  <script src="<%=pjtPath%>/target/js/jquery.wmuSlider.js"></script>
			  <script>
       			$('.example1').wmuSlider({
					 pagination : true,
					 nav : false,
				});         
   		     </script> 	
		
		</div>   
	</div>


<!--content  一个区域-->
<div class="welcome">
	<div class="container">
		<h3>产品展示</h3>
		<h5>Sed ut perspiciatis unde omnis iste natus error sit voluptatem.</h5>
		<div id="products" class="products">
			<div class="col-md-4 product-grid">
				<a href="<%=pjtPath%>/target/images/la1.jpg" class="b-link-stripe b-animate-go1   swipebox"  title="">
					<img src="<%=pjtPath%>/target/images/la1.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4> voluptatibus maiores alias perferendis</h4>
					<p> Itaque earum rerum hic tenetur a sapiente delectus,
						ut aut reiciendis voluptatibus</p>
				</div>
			</div>
			<div class="col-md-4 product-grid">
				<a href="<%=pjtPath%>/target/images/la2.jpg" class="b-link-stripe b-animate-go1   swipebox"  title="">
					<img src="<%=pjtPath%>/target/images/la2.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4> voluptatibus maiores alias perferendis</h4>
					<p> Itaque earum rerum hic tenetur a sapiente delectus,
						ut aut reiciendis voluptatibus</p>
				</div>
			</div>
			<div class="col-md-4 product-grid">
				<a href="<%=pjtPath%>/target/images/la3.jpg" class="b-link-stripe b-animate-go1   swipebox"  title="">
					<img src="<%=pjtPath%>/target/images/la3.jpg" alt=" " class="img-responsive" />
				</a>
				<div class="project-grid-text1">
					<h4> voluptatibus maiores alias perferendis</h4>
					<p> Itaque earum rerum hic tenetur a sapiente delectus,
						ut aut reiciendis voluptatibus</p>
				</div>
			</div>


			<link rel="stylesheet" href="<%=pjtPath%>/target/css/swipebox.css">
			<script src="<%=pjtPath%>/target/js/jquery.swipebox.min.js"></script>
			<script type="text/javascript">
				jQuery(function($) {
					$(".swipebox").swipebox();
				});
			</script>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
		<!----->


		<div class="col-mn">
			<div class="container">
					<div class="col-mn2">
						<h3>The Best Features</h3>
						<p>Contrary to popular belief
							, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
						<a class=" more-in" href="single.html">Read More</a>
				</div>
			</div>
		</div>



	<!-- -->

<!--start-team-->
<div class="team">
	<div class="container">
		<ul class="ch-grid">
			<li>
				<div class="ch-item animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
					<div class="ch-info">
						<div class="ch-info-front ch-img-2"></div>
						<div class="ch-info-back">
							<h3>Ipsum</h3>
							<p>by Zoe Ingram  <a href="#">View on Dribbble</a></p>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="ch-item animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
					<div class="ch-info">
						<div class="ch-info-front ch-img-3"></div>
						<div class="ch-info-back">
							<h3>Ingram</h3>
							<p>by Eileen Tjan <a href="#">View on Dribbble</a></p>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="ch-item animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
					<div class="ch-info">
						<div class="ch-info-front ch-img-4"></div>
						<div class="ch-info-back">
							<h3>Yacht</h3>
							<p>by Eileen Tjan  <a href="#">View on Dribbble</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>

	</div>
</div>
<!--start-yachts-->

<!-- 一些最新产品的 展示 -->

		<div class="featured">
			<div class="container">
				<div class="col-md-4 latest">
					<h4>Latest</h4>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
							<a class="comment" href="single.html"><i> </i> 0 Comments</a>
						</div>
					<div class="clearfix"> </div>
					</div>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la1.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
							<a class="comment" href="single.html"><i> </i> 0 Comments</a>
						</div>
					<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 latest">
					<h4>Featured</h4>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la3.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
							<a class="comment" href="single.html"><i> </i> 0 Comments</a>
						</div>
					<div class="clearfix"> </div>
					</div>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la2.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
							<a class="comment" href="single.html"><i> </i> 0 Comments</a>
						</div>
					<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 latest">
					<h4>Popular</h4>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la1.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
							<a class="comment" href="single.html"><i> </i> 0 Comments</a>
						</div>
					<div class="clearfix"> </div>
					</div>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
							<a class="comment" href="single.html"><i> </i> 0 Comments</a>
						</div>
					<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

<!-- foot 版权和一些链接信息-->
<!-- footer -->
<jsp:include   page="footer.jsp" flush="true"/>
<!-- footer -->

</body>
</html>