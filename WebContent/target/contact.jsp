<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
</head>
<body> 
<!--header--><jsp:include   page="head.jsp" flush="true"/>


<!--content-->
	<div class="contact">
			
			<div class="container">
				<h2>Contact</h2>
			<div class="contact-form">
				
				<div class="col-md-8 contact-grid">
					<form>	
						<input type="text" value="Name" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Name';}">
					
						<input type="text" value="Email" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Email';}">
						<input type="text" value="Subject" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Subject';}">
						
						<textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
						<div class="send">
							<input type="submit" value="Send" >
						</div>
					</form>
				</div>
				<div class="col-md-4 contact-in">

						<div class="address-more">
						<h4>地址</h4>
							<p>北京市丰台区</p>
							<p>右安门外大街凉水河南岸</p>
							<p>26号 </p>
						</div>
						<div class="address-more">
						<h4>联系方式</h4>
							<p>Tel:010-83533275</p>
							<p>Fax:010-83532758</p>
							<p>Email:<a href="mailto:jhyg001@sina.com"> jhyg001@sina.com</a></p>
						</div>
					
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="map">

			</div>
	</div>
	<!---->

    <jsp:include   page="footer.jsp" flush="true"/>

</body>
</html>