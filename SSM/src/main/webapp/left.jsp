<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson .header").click(
				function() {
					var $parent = $(this).parent();
					$(".menuson>li.active").not($parent).removeClass(
							"active open").find('.sub-menus').hide();

					$parent.addClass("active");
					if (!!$(this).next('.sub-menus').size()) {
						if ($parent.hasClass("open")) {
							$parent.removeClass("open").find('.sub-menus')
									.hide();
						} else {
							$parent.addClass("open").find('.sub-menus').show();
						}

					}
				});

		// 三级菜单点击
		$('.sub-menus li').click(function(e) {
			$(".sub-menus li.active").removeClass("active");
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('.menuson').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('.menuson').slideUp();
			} else {
				$(this).next('.menuson').slideDown();
			}
		});
	});
</script>


</head>

<body style="background:#fff3e1;">
	<div class="lefttop">
		<span></span>导航栏
	</div>

	<dl class="leftmenu">

		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /> </span>企业文化
			</div>
			<ul class="menuson">
				<li><cite></cite> <a href="findAll_cc" target="rightFrame">企业信息</a><i></i>
				</li>
				<li><cite></cite><a href="filelist.jsp" target="rightFrame">信息管理</a><i></i>
				</li>
				<li><cite></cite><a href="tab.jsp" target="rightFrame">Tab页</a><i></i>
				</li>
				
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico02.png" /> </span>产品管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="findAll" target="rightFrame">车辆列表</a><i></i>
				</li>
				<li><cite></cite><a href="addPrepare" target="rightFrame">车辆添加</a><i></i>
				</li>
				<li><cite></cite><a href="findAll_carType" target="rightFrame">车型分类</a><i></i>
				</li>
				<li><cite></cite><a href="findAll_carBrand" target="rightFrame">车辆品牌</a><i></i>
				</li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico02.png" /> </span>人才管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="findAll_recruit" target="rightFrame">招聘信息列表</a><i></i>
				</li>
				<li><cite></cite><a href="findAll_applyfor" target="rightFrame">应聘信息列表</a><i></i>
				</li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico02.png" /> </span>用户管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="findAll_user" target="rightFrame">用户列表</a><i></i>
				</li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico03.png" /> </span>订单管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="findAll_orderform" target="rightFrame">订单列表</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">常用资料</a><i></i></li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico04.png" /> </span>留言管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="findAll_lw" target="rightFrame">留言列表</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">常用资料</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">信息列表</a><i></i></li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico02.png" /> </span>系统管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="findAll_admin" target="rightFrame">管理员列表</a><i></i>
				</li>
				<li><cite></cite><a href="tech.jsp" target="rightFrame">技术支持</a><i></i>
				</li>
				<li><cite></cite><a href="tools.jsp" target="rightFrame">常用工具</a><i></i>
				</li>
				<li><cite></cite><a href="error.jsp" target="rightFrame">404页面</a><i></i>
				</li>
			</ul>
		</dd>

	</dl>
</body>
</html>