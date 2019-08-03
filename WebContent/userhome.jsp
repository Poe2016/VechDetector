<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String username=(String)session.getAttribute("username");
if(username==null || username.equals("")){
	response.sendRedirect("./login-regist/login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>userhome</title>
	
	<!-- Google font -->
	<!--<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet">-->

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="./fonts/webFont/css/bootstrap.min.css" />

	<!-- Owl Carousel -->
	<link type="text/css" rel="stylesheet" href="./fonts/webFont/css/owl.carousel.css" />
	<link type="text/css" rel="stylesheet" href="./fonts/webFont/css/owl.theme.default.css" />

	<!-- Magnific Popup -->
	<link type="text/css" rel="stylesheet" href="./fonts/webFont/css/magnific-popup.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="./fonts/webFont/css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="./fonts/webFont/css/style.css" />
	<!-- mystyle stlylesheet -->
	<link type="text/css" rel="stylesheet" href="./fonts/webFont/css/mystyle.css" />


	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	
	<link href="./fonts/webFont/css/video-js.min.css" rel="stylesheet" type="text/css">
	<script src="./fonts/webFont/js/video.min.js"></script>
	<script>
    	videojs.options.flash.swf = "video-js.swf";
    	
	</script>
	<style>
	canvas {
	  width: 100px;
	  height: 100px;
	  margin: 20px;
	}
	</style>

	
</head>

<body>
	<!-- Header -->
	<header id="home">
		<!-- Background Image -->
		<div class="bg-img" style="background-image: url('./fonts/webFont/img/background1.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Nav -->
		<nav id="nav" class="navbar nav-transparent">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">
						<a href="userhome.jsp">
							<img class="logo" src="./fonts/webFont/img/logo.png" alt="logo">
							<img class="logo-alt" src="./fonts/webFont/img/logo-alt.png" alt="logo">
						</a>
					</div>
					<!-- /Logo -->

					<!-- Collapse nav button -->
					<div class="nav-collapse">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
					<li><a href="#home">Home</a></li>
					<li class="has-dropdown"><a href="#">服务</a>
						<ul class="dropdown">
							<li><a href="#about">图像识别</a></li>
							<li><a href="#portfolio">视频识别</a></li>
						</ul>
					</li>
					<li class="has-dropdown"><a href="#"><%= username%></a>
						<ul class="dropdown">
							<li><a href="./personal/personal.jsp">修改个人信息</a></li>
							<li><a href="logout.jsp">退出登录</a></li>
							<!--<li><a href="blog-single.html">团队成员</a></li>-->
						</ul>
					</li>
					
					<li><a href="#pricing">项目简介</a></li>
					<li class="has-dropdown"><a href="#testimonial">团队</a>
						<ul class="dropdown">
							<li><a href="#testimonial">团队成员</a></li>
							<li><a href="#team">团队简介</a></li>
							<!--<li><a href="blog-single.html">团队成员</a></li>-->
						</ul>
					</li>
					<li><a href="#contact">联系我们</a></li>
				</ul>
				<!-- /Main navigation -->

			</div>
		</nav>
		<!-- /Nav -->

		<!-- home wrapper -->
		<div class="home-wrapper">
			<div class="container">
				<div class="row">

					<!-- home content -->
					<div class="col-md-10 col-md-offset-1">
						<div class="home-content">
							<h1 class="white-text">欢迎进入车辆识别系统</h1>
							<p class="white-text">不忘初心，方得始终.
							</p>
							<!--注意这里使用<a>标签不合适，稍后改-->
							<button id="id-imp-img-btn" class="white-btn" onclick="importbtn('id-imp-img-btn')">图像识别</button>
							<button id="id-imp-vedio-btn" class="main-btn" onclick="importbtn('id-imp-vedio-btn')">视频识别</button>
						</div>
					</div>
					<!-- /home content -->

				</div>
			</div>
		</div>
		<!-- /home wrapper -->

	</header>
	<!-- /Header -->

	<!-- About 对应导入图片-->
	<div id="about" class="section md-padding">

		<!-- Container -->
		<div class="container">
			<!--功能介绍-->
			<div class="functional-introduction" >
				<div class="introduce">
					<div class="intro-container">
						<div class="intro-title">车辆图像识别功能介绍</div>
						<div class="intro-text">终极理想：对用户上传的汽车图片自动地检测车身以及识别车辆属性，支持多种车身颜色、多种车型、多种品牌、多种车系+年款的识别，以及车标的位置检测，更多车辆特征及部件的检测识别持续扩充中。</div>
						<div class="intro-img" style="background-image: url(&quot;./img/introduce-img.jpg&quot;); width: 800px; height: 400px;">
							
						</div>
					</div>

				</div>

			</div><!--functional-introduction 功能介绍-->
			<div class="experience-container">
				<div class="experience-center">
					<div class="title">技术体验中心</div>
					<div class="container">
						<div class="experience-img-wall">
							<div class="picture-wall">
								<div class="picture-container" style="width: 1200px;">
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-1.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-2.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-3.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-4.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-5.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-6.jpg&quot;);"><!----></div>
								</div>
							</div>
						</div><!--end experience-img-wall-->
						<div class="upload-img">
							<div class="upload">
								<div class="location-img">
									<div class="location-img-uplaod" >
										<div class="text">上传本地照片</div> 
										<input type="file" accept="image/png, image/jpeg, image/jpg" onchange='uploadFile()' class="input-file" id="file">
									</div>
								</div>
								<script>
									function uploadFile(){
										var formData = new FormData(); 
										formData.append('file', $('#file')[0].files[0]); //添加图片信息的参数 
										formData.append('sizeid',123); //添加其他参数 
										$.ajax({ 
											url: 'uploadImg', 
											type: 'POST', 
											cache: false, //上传文件不需要缓存 
											data: formData, 
											mimeType: "multipart/form-data",
											processData: false, // 告诉jQuery不要去处理发送的数据 
											contentType: false, // 告诉jQuery不要去设置Content-Type请求头 
											success: function (data) { //data为返回的数据
												var resultArray = data.split('|');
												$('#imgDetail0')[0].innerHTML=resultArray[0];
												$('#imgDetail1')[0].innerHTML=resultArray[1];
												$('#imgDetail2')[0].innerHTML=resultArray[2];
												$('#imgDetail3')[0].innerHTML=resultArray[3];
												$('#imgDetail4')[0].innerHTML=resultArray[4];
											}, 
											error: function (data) { 
												alert("上传失败"); 
												} 
											}) 
										
									}
								</script>
								<div class="internet-img">
									<div class="el-input">
										<!---->
										<input autocomplete="off" placeholder="使用网络图片,请粘贴图片URL" type="text" rows="2" validateevent="true" class="el-input__inner" id="ana-input">
										<!----><!----><!---->
									</div> 
									<span id="analyid" class="analyse-btn" onclick="anaClick()" onclick="uploadFile()">分析</span>
									<script>
										function anaClick(){
											var preview = document.querySelector('#preview');
											var ana = document.querySelector("#ana-input");
											var newUrl = ana.value;
								            preview.style.backgroundImage = 'url(' + newUrl + ')';
								            $.ajax({ 
												url: 'urlUpImg?url='+newUrl, 
												type: 'POST', 
												success: function (data) { //data为返回的数据
													var resultArray = data.split('|');
													$('#imgDetail0')[0].innerHTML=resultArray[0];
													$('#imgDetail1')[0].innerHTML=resultArray[1];
													$('#imgDetail2')[0].innerHTML=resultArray[2];
													$('#imgDetail3')[0].innerHTML=resultArray[3];
													$('#imgDetail4')[0].innerHTML=resultArray[4];
												}, 
												error: function (data) { 
													alert("上传失败"); 
													} 
												}) 
											
										}
									</script>
								</div>
							</div>
						</div><!--end upload-img-->
						<div class="result">
							<div class="ocr-experience-center-result">
								<div class="img-result" style="height:400px;">
									<div class="img-experience"></div>
									<div class="img-result-bg" style="background-image: url('./fonts/webFont/img/exp_img_bg.png');width:400px;height:400px;"></div>
									<div class="box-container" id="preview" style="background-size: 100% auto;">
										<div class="box-car-position" style="top: 199px; left: 99px; width: 167px; height: 83px;">
											<div class="car-line left-top"></div> 
											<div class="car-line right-top"></div> 
											<div class="car-line left-bottom"></div> 
											<div class="car-line right-bottom"></div>
										</div>
										
									</div>
									<script type="text/javascript">
							            var preview = document.querySelector('#preview');
							            var eleFile = document.querySelector('#file');
							            eleFile.addEventListener('change', function() {
							                var file = this.files[0];                
							                // 确认选择的文件是图片                
							                if(file.type.indexOf("image") == 0) {
							                    var reader = new FileReader();
							                    reader.readAsDataURL(file);                    
							                    reader.onload = function(e) {
							                        // 图片base64化
							                        var newUrl = this.result;
							                        preview.style.backgroundImage = 'url(' + newUrl + ')';
							                    };
							                }
							            });
							            
							        </script>
								</div><!--end img-result-->
								<div class="result-container">
									<div class="result-list scrollbar"><!----> 
										<div class="result-details hide-title">
											<div class="detail">图片识别信息</div>
											<div class="detail odd" id="imgDetail0"></div>
											<div class="detail" id="imgDetail1"></div>
											<div class="detail odd" id="imgDetail2"></div>
											<div class="detail" id="imgDetail3"></div>
											<div class="detail odd" id="imgDetail4"></div>
										</div>
									</div>
								</div><!--end result-container-->
							</div>
						</div><!--end result-->
					</div><!--end container-->
				</div><!--end experience-center-->
			</div><!--end experience-container-->
		</div>
		<!-- /Container -->
	</div>
	<!-- /About -->


	<!-- Portfolio 对应导入视频-->
	<div id="portfolio" class="section md-padding bg-grey">
		<!-- Container -->
		<div class="container">
			<!--功能介绍-->
			<div class="functional-introduction" >
				<div class="introduce">
					<div class="intro-container">
						<div class="intro-title">车辆视频识别功能介绍</div>
						<div class="intro-text">终极理想：对用户上传的汽车图片自动地检测车身以及识别车辆属性，支持多种车身颜色、多种车型、多种品牌、多种车系+年款的识别，以及车标的位置检测，更多车辆特征及部件的检测识别持续扩充中。</div>
						<div class="intro-img" style="background-image: url(&quot;./img/introduce-img.jpg&quot;); width: 800px; height: 400px;">							
						</div>
					</div>
				</div>
			</div><!--functional-introduction 功能介绍-->
			<div class="experience-container">
				<div class="experience-center">
					<div class="title">技术体验中心</div>
					<div class="container">
						<div class="experience-img-wall">
							<div class="picture-wall">
								<div class="picture-container" style="width: 1200px;">
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-1.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-2.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-3.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-4.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-5.jpg&quot;);"><!----></div>
									<div data-v-4165cced="" class="pic-item six-pic" style="background-image: url(&quot;./img/picture-wall-6.jpg&quot;);"><!----></div>
								</div>
							</div>
						</div><!--end experience-img-wall-->
						<div class="upload-img">
							<div class="upload">
								<div class="location-img">
									<div class="location-img-uplaod">
										<div class="text">上传本地视频</div> 
										<input type="file" accept="video/*" class="input-file" id="videoId" onchange="uploadVideo()">
									</div>
								</div>
								<script>
									function uploadVideo(){
										document.getElementById("example_video_1").style.display="none";
										document.getElementById("canv-id").style.display="block";
										document.getElementById("canv-id").style.background="#000";
										renderLoop();
										var formData = new FormData(); 
										var input = document.getElementById("videoId");
										var path=input.value;
										var start=path.indexOf(".");
										var type=path.substring(start);
										formData.append('file', $('#videoId')[0].files[0]); //添加图片信息的参数 
										var res = $.ajax({ 
											url: 'uploadVideo?type='+type, 
											type: 'POST', 
											cache: false, //上传文件不需要缓存 
											data: formData, 
											mimeType: "multipart/form-data",
											processData: false, // 告诉jQuery不要去处理发送的数据 
											contentType: false, // 告诉jQuery不要去设置Content-Type请求头 
											success: function (data) { //data为返回的数据
												document.getElementById("canv-id").style.display="none";
												document.getElementById("example_video_1").style.display="block";
												document.getElementById("canv-id").style.background="#fff";
												var dataArry=data.split(' ');
												if(dataArry[dataArry.length-1].substr(0,31)=="D:\\apache-tomcat-9.0.13\\upload\\"){
													var src =dataArry[dataArry.length-1].substr(23);
													document.getElementById("example_video_1").src=src;
													document.getElementById("example_video_1").play();
													/*var elem=document.getElementById("videosrc");
													elem.parentNode.removeChild(elem);
													var sourceDom = $("<source id=\"videosrc\" src=\""+src+"\">");
												       
													   $("#videoDiv video").append(sourceDom);
													   $("#videoDiv").show();
													   
													   // 自动播放
													   $("#videoDiv video")[0].play();*/
													   for(var i=0;i<dataArry.length-1;i++){
														   $('#videoId'+i)[0].innerHTML=dataArry[i];
													   }
												}
												
												
											}, 
											error: function (data) { 
												alert("上传失败"); 
												} 
											});
										
										
									}
								</script>
								<div class="internet-img">
									<div class="el-input">
										<!---->
										<input id="ana-video" autocomplete="off" placeholder="请输入网络视频地址" type="text" rows="2" validateevent="true" class="el-input__inner">
										<!----><!----><!---->
									</div> 
									<span class="analyse-btn" onclick="anaVC()">分析</span>
									<script>
										function anaVC(){
											var ana = document.querySelector("#ana-video");
											var url = ana.value;
											document.getElementById("example_video_1").style.display="none";
											document.getElementById("canv-id").style.display="block";
											document.getElementById("canv-id").style.background="#000";
											renderLoop();
								            $.ajax({ 
												url: 'urlUpVideo?url='+url, 
												type: 'POST', 
												success: function (data) { //data为返回的数据
													document.getElementById("canv-id").style.display="none";
													document.getElementById("example_video_1").style.display="block";
													document.getElementById("canv-id").style.background="#fff";
													var dataArry=data.split(' ');
													document.getElementById("example_video_1").src=url;
													document.getElementById("example_video_1").play();
												   for(var i=0;i<dataArry.length;i++){
													   $('#videoId'+i)[0].innerHTML=dataArry[i];
												   }
													
												}, 
												error: function (data) { 
													alert("上传失败"); 
													} 
												}) 
											
										}
									</script>
								</div>
							</div>
						</div><!--end upload-img-->
						<div class="result">
							<div class="ocr-experience-center-result">
								<div class="img-result" style="height:400px;">
									<div class="img-experience"></div>
									<div class="img-result-bg" style="background-image: url('./fonts/webFont/img/exp_img_bg.png');width:400px;height:400px;"></div>
									<div class="box-container" id="videoDiv" style="padding-top:100px;text-align:center;">
										
										
										<video id="example_video_1" class="video-js vjs-default-skin vjs-big-play-centered" controls preload="none" width="640" height="264"
										    poster="" style="width:400px;height:200px;display:block;"
										    >
										    
										    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
										    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
										</video>
										<div id="canv-id" style="width:400px;height:200px;padding-top:30px;">
											<canvas class="js-rotate-06" width="100" height="100"></canvas>
										</div>
										<script>
												var _createClass = function () { 
													function defineProperties(target, props) { 
														for (var i = 0; i < props.length; i++) { 
															var descriptor = props[i]; 
															descriptor.enumerable = descriptor.enumerable || false; 
															descriptor.configurable = true; 
															if ("value" in descriptor) 
																descriptor.writable = true; 
															Object.defineProperty(target, descriptor.key, descriptor); 
															} 
														} 
													return function (Constructor, protoProps, staticProps) { 
														if (protoProps) 
															defineProperties(Constructor.prototype, protoProps); 
														if (staticProps) 
															defineProperties(Constructor, staticProps); 
														return Constructor; 
														}; 
														}();
												
												function _classCallCheck(instance, Constructor) { 
													if (!(instance instanceof Constructor)) { 
														throw new TypeError("Cannot call a class as a function"); 
														} 
													}
												
												var RotatingCircle = function () {
												  function RotatingCircle(canvas, opts) {
												    _classCallCheck(this, RotatingCircle);
												
												    this.ctx = canvas.getContext('2d');
												    this.size = Math.min(canvas.clientWidth, canvas.clientHeight);
												    this.radius = opts.radius;
												    this.lineWidth = opts.lineWidth;
												    this.strokeStyle = opts.strokeStyle;
												    this.degreeStart = opts.degreeStart;
												    this.degreeEnd = opts.degreeEnd;
												    this.stepStart = opts.stepStart;
												    this.stepEnd = opts.stepEnd;
												  }
												
												  _createClass(RotatingCircle, [{
												    key: 'render',
												    value: function render() {
												      this.degreeStart = this.degreeStart + this.stepStart;
												      this.degreeEnd = this.degreeEnd + this.stepEnd;
												      if (this.degreeStart - 360 > this.degreeEnd) {
												        this.degreeStart -= 720;
												      }
												
												      this.ctx.clearRect(0, 0, this.size, this.size);
												      this.ctx.lineWidth = this.lineWidth;
												      this.ctx.beginPath();
												      this.ctx.strokeStyle = this.strokeStyle;
												      this.ctx.arc(this.size/2, this.size/2, this.radius - this.lineWidth/2, (this.degreeStart < this.degreeEnd ? this.degreeStart : this.degreeEnd) * Math.PI/180, (this.degreeStart < this.degreeEnd ? this.degreeEnd : this.degreeStart) * Math.PI/180, false);
												      this.ctx.stroke();
												    }
												  }]);
												
												  return RotatingCircle;
												}();
												
												var circles = [ new RotatingCircle(document.querySelector('.js-rotate-06'), {
												  radius: 50,
												  lineWidth: 3,
												  strokeStyle: '#f1aab1',
												  degreeStart: -90,
												  degreeEnd: 270,
												  stepStart: 14,
												  stepEnd: 2
												})];
												var renderLoop = function renderLoop() {
												  circles.map(function (circle) {
												    circle.render();
												  });
												  requestAnimationFrame(function () {
												    renderLoop();
												  });
												};
												
										</script>
										<div class="box-car-position" style="top: 199px; left: 99px; width: 167px; height: 83px;">
											<div class="car-line left-top"></div> 
											<div class="car-line right-top"></div> 
											<div class="car-line left-bottom"></div> 
											<div class="car-line right-bottom"></div>
										</div>
									</div>
								</div><!--end img-result-->
								<div class="result-container">
									<div class="result-list scrollbar"><!----> 
										<div class="result-details hide-title">
											<div class="detail">视频识别信息</div>
											<div class="detail odd" id="videoId0"></div>
											<div class="detail" id="videoId1"></div>
											<div class="detail odd" id="videoId2"></div>
											<div class="detail" id="videoId3"></div>
											<div class="detail odd" id="videoId4"></div>
											<div class="detail" id="videoId5"></div>
										</div>
									</div>
								</div><!--end result-container-->
							</div>
						</div><!--end result-->
					</div><!--end container-->
				</div><!--end experience-center-->
			</div><!--end experience-container-->
		</div>
		<!-- /Container -->
	</div>
	<!-- /Portfolio -->

	<!-- Pricing 对应项目简介-->
	<div id="pricing" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">项目简介</h2>
				</div>
				<!-- /Section header -->


			</div>
			<!-- Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Pricing -->


	<!-- Testimonial -->
	<div id="testimonial" class="section md-padding">

		<!-- Background Image -->
		<div class="bg-img" style="background-image: url('./fonts/webFont/img/background3.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Testimonial slider -->
				<div class="col-md-10 col-md-offset-1">
					<div id="testimonial-slider" class="owl-carousel owl-theme">

						<!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="" alt="">
								<h3 class="white-text">宋波文</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">*******</p>
						</div>
						<!-- /testimonial -->

						<!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="" alt="">
								<h3 class="white-text">张韫</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">*****</p>
						</div>
						<!-- /testimonial -->

					</div>
				</div>
				<!-- /Testimonial slider -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Testimonial -->

	<!-- Team -->
	<div id="team" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">团队简介</h2>
				</div>
				<!-- /Section header -->

				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>宋波文</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div>
				<!-- /team -->

				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>张韫</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div>
				<!-- /team -->

				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>乔运浩</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div>
				<!-- /team -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Team -->

	<!-- Contact -->
	<div id="contact" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section-header -->
				<div class="section-header text-center">
					<h2 class="title">联系我们</h2>
				</div>
				<!-- /Section-header -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-phone"></i>
						<h3>电话</h3>
						<p>+86*******</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-envelope"></i>
						<h3>邮件</h3>
						<p>poe@mail.ustc.edu.cn</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-map-marker"></i>
						<h3>地址</h3>
						<p>安徽合肥包河区</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact form -->
				<div class="col-md-8 col-md-offset-2">
					<form class="contact-form">
						<input type="text" class="input" placeholder="姓名">
						<input type="email" class="input" placeholder="邮箱">
						<input type="text" class="input" placeholder="主题">
						<textarea class="input" placeholder="消息"></textarea>
						<button class="main-btn">发送</button>
					</form>
				</div>
				<!-- /contact form -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Contact -->


	<!-- Footer -->
	<footer id="footer" class="sm-padding bg-dark">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<div class="col-md-12">

					<!-- footer logo -->
					<div class="footer-logo">
						<a href="userhome.jsp"><img src="./fonts/webFont/img/logo-alt.png" alt="logo"></a>
					</div>
					<!-- /footer logo -->

					<!-- footer follow -->
					<ul class="footer-follow">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube"></i></a></li>
					</ul>
					<!-- /footer follow -->

					<!-- footer copyright -->
					<div class="footer-copyright">
						<p>Copyright © </p>
					</div>
					<!-- /footer copyright -->

				</div>

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</footer>
	<!-- /Footer -->

	<!-- Back to top -->
	<div id="back-to-top"></div>
	<!-- /Back to top -->

	<!-- Preloader -->
	<div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
	<!-- /Preloader -->

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="./fonts/webFont/js/jquery.min.js"></script>
	<script type="text/javascript" src="./fonts/webFont/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./fonts/webFont/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="./fonts/webFont/js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="./fonts/webFont/js/main.js"></script>
	<script type="text/javascript" src="./fonts/webFont/js/myjs.js"></script>

</body>

</html>