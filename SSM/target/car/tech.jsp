<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script language="javascript">
	$(function() {
		$('.error').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 490) / 2
		});
		$(window).resize(function() {
			$('.error').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 490) / 2
			});
		})
	});
</script>


</head>


<body style="background:#FFF8ED;">

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a>
			</li>
			<li><a href="#">技术支持</a>
			</li>
		</ul>
	</div>

	<div class="tech">

		<dl>
			<dt>技术支持</dt>
			<dd>
				<b>官方网站(zhanghuhaozhao.com)</b>&nbsp;&nbsp;&nbsp;&nbsp; QQ：120496649
			</dd>
			<dd>
				<b>电子邮件</b>&nbsp;&nbsp;&nbsp;&nbsp;13891876436@163.com
			<dd>交流QQ群：274722250</dd>
		</dl>


	</div>



</body>

</html>