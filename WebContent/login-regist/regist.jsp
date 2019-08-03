<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>regist</title>
		<script src="modernizr.js"></script>
		<link href="style.css" rel="stylesheet" type="text/css" />
		<link href="pnf.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<div class="content">
			<div id="register_box">
				<div id="head">
					<h1>创建账号</h1>
					<div class="tag"></div>
				</div>
				<div id="main_box">
					<form class="register" action="registAct" method="get">
						<h1>免费注册</h1>
						<br />
						
						<div class="text">
							<img src="images/username.png" alt="username" />
							<input type="text" name="username" placeholder="用户名" /><br />
						</div>
						<div class="text">
							<img src="images/email.png" alt="email" />
							<input type="text" name="email" placeholder="电子邮箱" /><br />
						</div>
						<div class="text">
							<img src="images/password.png" alt="password" />
							<input type="password" name="password" placeholder="密码" /><br />
						</div>	
						
						<input type="submit" value="立即注册" />
						<br /><br /><br />					
						<div class="login">
							已有账号?
							<a href="#">立即登录.</a>
						</div>
					</form>
					
					<div class="right_box">
						<div id="benefits">
							<h1>注册理由</h1><br />
							
							<ul>
								<li>
									<div class="he">快速支持</div>
									<span>注册速度快。</span>
								</li>
								<li>
									<div class="he">登录入口</div>
									<span>注册是使用我们产品的入口!</span>
								</li>
								<li>
									<div class="he">无广告</div>
									<span>没有无聊的广告! </span>
								</li>
							</ul>
						</div>
						<br /><br /><br />
						<div id="facebook-con">
							<h1>其他方式</h1>
							<br />
						</div>
						<div class="fbl">
							<br />
							<a href="#">
								<img src="images/facebook.png" alt="Connect with Facebook" />
							</a>
							<br />
							<span>	
								别担心。 没有您的允许我们 <em>绝不会</em> 给您发消息。
							</span>
						</div>
					</div>
				</div>
				<div id="footer_box">
				copyright
				</div>
			</div>
		</div>
	</body>
</html>