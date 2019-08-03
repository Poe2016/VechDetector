<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String username=(String)session.getAttribute("username");
if(username==null || username.equals("")){
	response.sendRedirect("./login-regist/login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改个人信息</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tabbed Profile Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300italic,300,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="main">
		<h1>修改个人信息</h1>
		<div class="content">
			<div class="sap_tabs">
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
						<script type="text/javascript">
							$(document).ready(function () {
								$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true,   // 100% fit in a container
									closed: 'accordion', // Start closed if in accordion view
									activate: function(event) { // Callback function if tab is switched
										var $tab = $(this);
										var $info = $('#tabInfo');
										var $name = $('span', $info);
										$name.text($tab.text());
										$info.show();
									}
								});

								$('#verticalTab').easyResponsiveTabs({
									type: 'vertical',
									width: 'auto',
									fit: true
								});
							});
						</script>
						<div class="portfolio-grid">
							<div class="port-left">
								<ul class="resp-tabs-list">
									  <img class="lady" src="images/pic1.jpg" alt="" />
									  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Basic Details</span></li>
									  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Interests</span></li>
									  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Social Life</span></li>
									  <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>Work & Play</span></li>
									  <li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span>Settings</span></li>
									  <div class="clear"></div>
								</ul>		
							</div>
							<div class="port-right">
								
									<div class="resp-tabs-container">
										<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
											<div class="profile-content">
												<h3>User Name</h3>	
												<div class="input-group">
													<span class="input-group-btn">
														<select class="btn btn-default button-one" name="ext">
															<option selected="">Ms.</option>
															<option>Mr.</option>
															<option>Mrs.</option>
														</select>
													</span>				
																<input id="name-id" type="text" class="form-control" value="<%=username %>" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=username %>';}">	
												</div>
												<h3>Password</h3>
												<div class="email-group">
														<div class="email-icon"><span></span></div>
														<div class="email-form">
															<form>
																<input id="pswd-id" type="text" class="fb-ico" value="" onfocus="this.value = '';" onblur="">	
															</form>
														</div>
														<div class="clear"></div>
												</div>
												<h3>Phone Number</h3>	
												<div class="phone-group">			
													<div class="cell-icon"><span></span></div>
														<div class="cell-form">
															<form>
																<input id="phone-id" type="text" value="" >	
															</form>
														</div>
														<div class="clear"></div>					 
												</div>
												<h3>Gender</h3>	
													<div class="radio-btns">
														<div class="swit">								
															<div class="check_box"> <div class="radio"> <label><input type="radio" name="radio-g" value="m" checked=""><i></i><img src="images/man.png" alt=" "/></label> </div></div>
															<div class="check_box"> <div class="radio2"> <label><input type="radio" name="radio-g" value="w"><i></i><img src="images/woman.png" alt=" "/></label> </div></div>							    
														</div>
														<div class="clear"></div>			
													</div>
													
												
											</div>
											<div class="update">
												<a onclick="modify()" style="cursor:pointer;">Update</a>
												<script type="text/javascript">
													function modify(){
														var username=document.getElementById("name-id").value;
														var password=document.getElementById("pswd-id").value;
														var phone=document.getElementById("phone-id").value;
														var sex;
														var radios = document.getElementsByName("radio-g");
														for ( var i = 0; i < radios.length; i++) {

															  if (radios[i].checked==true) {
															  	sex = radios[i].value;
															 }

														 }
														$.ajax({ 
															url: 'modify?username='+username+'&password='+password+'&phone='+phone+'&sex='+sex, 
															type: 'POST', 
															success: function (data) { //data为返回的数据
																alert("修改成功");
															location.href="../logout.jsp";
															}, 
															error: function (data) { 
																alert("上传失败"); 
																} 
															}) 
													}
												</script>
											</div>
											<div class="clear"></div>
										</div>
										<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
											<div class="interests">
												<h3>Interested in</h3>
												<div class="single-bottom">
													<ul>
														<li>
															<input type="checkbox"  id="brand" value="">
															<label for="brand"><span></span>Arts & Entertainment</label>
														</li>
														<li>
															<input type="checkbox"  id="brand1" value="">
															<label for="brand1"><span></span> Beauty & Fitness</label>
														</li>
														<li>
															<input type="checkbox"  id="brand2" value="">
															<label for="brand2"><span></span> Finance</label>
														</li>
														<li>
															<input type="checkbox"  id="brand3" value="">
															<label for="brand3"><span></span> Computer & Electronics</label>
														</li>
														<li>
															<input type="checkbox"  id="brand4" value="">
															<label for="brand4"><span></span>Food And Drinks</label>
														</li>
														<li>
															<input type="checkbox"  id="brand5" value="">
															<label for="brand5"><span></span>Business & Industrial</label>
														</li>
														<li>
															<input type="checkbox"  id="brand6" value="">
															<label for="brand6"><span></span>Home & Garden</label>
														</li>
														
														
													</ul>
												</div>
											</div>
											<div class="update">
												<a href="#">Update</a>
											</div>
											<div class="clear"></div>											
										</div>
										<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
											<div class="social-life">
												<h3>Social Profile</h3>
												<h4>We can automatically retrieve most facebook, twitter and linkedin profiles based on email address..</h4>	
												<p>Would you like to import social profiles now??  You can change this later.</p>
												<a href="#">Not Now</a>
												<a href="#">Yes</a>
											</div>
										</div>
										<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
											<div class="work-play">
												<h3>Work and Organization</h3>
												<h4>Profile Name</h4>
												<form>
													<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
												
												<h4>Customer Id</h4>
												<form>
													<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
												<h4>Employed In</h4>
												<form>
													<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
												<h4>Organization</h4>
												<form>
													<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
											</div>	
											<div class="update">
												<a href="#">Update</a>
											</div>
											<div class="clear"></div>
										</div>
										<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-4">
											<div class="work-play">
												<h3>Settings</h3>
												<h4>Profile Name</h4>
												<form>
													<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
												<h4>Email Address</h4>
												<form>
													<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
												<h4>New Password</h4>
												<form>
													<input type="password" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
												<h4>Re-Type Password</h4>
												<form>
													<input type="password" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">	
												</form>
											</div>	
											<div class="update">
												<a href="#">Update</a>
											</div>
											<div class="clear"></div>
										</div>									
									</div>	
								
							</div>	
							<div class="clear"></div>
						</div>
						
			</div>
		</div>

		</div>
		
	</div>
</body>
</html>