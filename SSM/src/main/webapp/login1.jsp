<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		});
	});
</script>

<script type="text/javascript">
	$(function(){
		$('.loginbtn').click(function(){
			var uname = $('.loginuser').val();
			var upwd = $('.loginpwd').val();
			$.post(
				"checkadmin",//发送位置
				{adminName : uname,
				adminPassword : upwd},//携带的参数
			);
		});
	});
</script>

</head>

<body
	style="background-color:#df7611; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录后台管理界面平台</span>
		<ul>
			<li><a href="login.jsp">回首页</a>
			</li>
			<li><a href="#">帮助</a>
			</li>
			<li><a href="#">关于</a>
			</li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>

		<div class="loginbox">
			<form action="checkadmin" method="post">
				<ul>
					<li><input name="adminName" type="text" class="loginuser" value=""
						onclick="JavaScript:this.value=''" />
					</li>
					<li><input name="adminPassword" type="password" class="loginpwd" value=""
						onclick="JavaScript:this.value=''" />
					</li>
					<li><input type="submit" class="loginbtn" value="登录"/><label>
						<input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a
							href="#">忘记密码？</a>
					</label>
					</li>
				</ul>
			</form>

		</div>

	</div>



	<div class="loginbm">
		版权所有 2014 <a href="http://www.uimaker.com">uimaker.com</a>
		仅供学习交流，勿用于任何商业用途
	</div>


</body>
</html>