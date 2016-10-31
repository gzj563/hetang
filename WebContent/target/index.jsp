
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%
	String pjtPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>


<body> 
<!--header-->
<jsp:include   page="head.jsp" flush="true"/>


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


<!--content  一个区域-->
<div class="welcome">
    <div class="container">
        <h3>施用技术</h3>
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
						</div>
					<div class="clearfix"> </div>
					</div>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la1.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
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
						</div>
					<div class="clearfix"> </div>
					</div>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la2.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
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
						</div>
					<div class="clearfix"> </div>
					</div>
					<div class="late">
						<a href="single.html" class="fashion"><img class="img-responsive " src="<%=pjtPath%>/target/images/la.jpg" alt=""></a>
						<div class="grid-product">
							<span>6 Apr, 2015</span>
							<p><a href="single.html"> Ipsum dolor sit amet, consectetuer adipiscing elit,it has roots </a></p>
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