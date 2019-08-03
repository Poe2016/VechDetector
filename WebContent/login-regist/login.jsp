<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jQuery1.7.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="js/Validform_v5.3.2_min.js"></script>

</head>

<body>
<div id="tab">
  <ul class="tab_menu">
    <li class="selected">用户登录</li>
    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li> 
    <!--<li>教务登录</li> 注意css中修改宽度-->
  </ul>
  <div class="tab_box"> 
    <!-- 学生登录开始 -->
    <div>
      <div class="stu_error_box"></div>
      <form action="stuLoginAct" method="get" class="stu_login_error">
        <div id="username">
          <label>账&nbsp;&nbsp;&nbsp;号：</label>
          <input type="text" id="stu_username_hide" name="username" placeholder="输入账号" value="" nullmsg="账号不能为空！" datatype="s6-18" errormsg="账号范围在6~18个字符之间！" sucmsg="账号验证通过！"/>
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="stu_password_hide" name="password" placeholder="输入密码" value="" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！"/>
        </div>
    <!-- <div id="code">
          <label>验证码：</label>
          <input type="text" id="stu_code_hide" name="code"  value="输入验证码" nullmsg="验证码不能为空！" datatype="*4-4" errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
          <img src="images/captcha.jpg" title="点击更换" alt="验证码占位图"/> </div>
        <div id="remember">
          <input type="checkbox" name="remember">
          <label>记住密码</label>
        </div>  -->
        <div id="login">
          <button type="submit" id="longin_btn">登录</button>
        </div>
      </form>
    </div>
   <!-- 学生登录结束-->
   <!-- 导师登录开始-->
    <div class="hide">
     <div class="tea_error_box"></div>
      <form action="teaLoginAct" method="get" class="tea_login_error">
        <div id="username">
          <label>管理员账号：</label>
          <input type="text" id="tea_username_hide" name="username" placeholder="输入管理员账号" value="" nullmsg="管理员账号不能为空！" datatype="s6-18" errormsg="管理员账号范围在6~18个字符之间！" sucmsg="管理员账号验证通过！"/>
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="password">
          <label>管理员密码：</label>
          <input type="password" id="tea_password_hide" name="password" placeholder="输入管理员密码" value="" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！"/>
        </div>
     <!--<div id="code">
          <label>验&nbsp&nbsp&nbsp证&nbsp&nbsp&nbsp码：</label>
          <input type="text" id="tea_code_hide" name="code"  value="输入验证码" nullmsg="验证码不能为空！" datatype="*4-4" errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
          <img src="images/captcha.jpg" title="点击更换" alt="验证码占位图"/> </div>
        <div id="remember">
          <input type="checkbox" name="remember">
          <label>记住密码</label>
        </div>  -->
        <div id="login">
          <button type="submit">登录</button>
        </div>
      </form>
    </div>
     <!-- 导师登录结束-->
     <!-- 教务登录开始-->
    <div class="hide">
    <div class="sec_error_box"></div>
      <form action="" method="post" class="sec_login_error">
        <div id="username">
          <label>教务号：</label>
          <input type="text" id="sec_username_hide" name="username" value="输入教务号" nullmsg="教务号不能为空！" datatype="s6-18" errormsg="教务号范围在6~18个字符之间！" sucmsg="教务号验证通过！"/>
          <!--ajaxurl="demo/valid.jsp"--> 
        </div>
        <div id="password">
          <label>密&nbsp;&nbsp;&nbsp;码：</label>
          <input type="password" id="sec_password_hide" name="password" value="输入密码" nullmsg="密码不能为空！" datatype="*6-16" errormsg="密码范围在6~16位之间！" sucmsg="密码验证通过！"/>
        </div>
        <div id="code">
          <label>验证码：</label>
          <input type="text" id="sec_code_hide" name="code"  value="输入验证码" nullmsg="验证码不能为空！" datatype="*4-4" errormsg="验证码有4位数！" sucmsg="验证码验证通过！"/>
          <img src="images/captcha.jpg" title="点击更换" alt="验证码占位图"/> </div>
        <div id="remember">
          <input type="checkbox" name="remember">
          <label>记住密码</label>
        </div>
        <div id="login">
          <button type="submit">登录</button>
        </div>
      </form>
    </div>
     <!-- 教务登录结束-->
  </div>
</div>
<div class="bottom">
  copyright
</div>
<div class="screenbg">
  <ul>
    <li><a href="javascript:;"><img src="images/0.jpg"></a></li>
    <li><a href="javascript:;"><img src="images/1.jpg"></a></li>
  </ul>
</div>
</body>
</html>
