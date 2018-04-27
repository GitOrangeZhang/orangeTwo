<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
	KE.show({
		id : 'content7',
		cssPath : './index.css'
	});
</script>

<script type="text/javascript">
	$(document).ready(function(e) {

		$(".select3").uedSelect({
			width : 152
		});
	});
</script>
</head>

<body class="sarchbody">

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="main.jsp">首页</a></li>
			<li><a href="#">订单列表</a></li>
		</ul>
	</div>

	<div class="formbody">


		<div id="usual1" class="usual">



			<form action="seach_of" method="post">
				<ul class="seachform1">
				<li><label>关键字</label><input name="ofname" type="text"
					class="scinput1" />&nbsp;&nbsp;<input type="submit" class="scbtn2"
						value="查询" />
				</li></ul>
			</form>


			<!-- <ul class="seachform1">
				<li class="sarchbtn"><label>&nbsp;</label><a
					href="Orderformsave.jsp"><input name="" type="button"
						class="scbtn" value="新增" />
				</a> <a href="#"><input name="" type="button" class="scbtn2"
						value="查询" />
				</a></li>
			</ul> -->

			<script language="javascript">
				$(document).ready(function() {
					$(".scbtn1").click(function() {
						if ($(".seachform2").hasClass("hideclass")) {
							$(".seachform2").removeClass("hideClass");
						} else {
							$(".seachform2").addClass("hideClass");
						}
					});
				});
			</script>
			<script type="text/javascript">
				$(document).ready(function() {
					$(".scbtn1").click(function() {
						$(".seachform2").fadeIn(200);
					});

				});
			</script>
			<div class="formtitle">
				<span>项目列表</span>
			</div>
			<table class="tablelist">
				<thead>
					<tr>
						<th><input name="" type="checkbox" value="" />
						</th>
						<th>编号</th>
						<th>订单名称</th>
						<th>用户</th>
						<th>金额</th>
						<th>订单详情</th>
						<th>订单时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${orderforms }" var="order" varStatus="i">
						<tr>
							<td><input name="checkbox" type="checkbox" value="${order.orderFormId }" /></td>
							<td>${i.count }</td>
							<td>${order.orderFormName }</td>
							<td>${order.user.userName }</td>
							<td>${order.deposit }</td>
							<td>${order.orderFormMessage }</td>
							<td>${order.orderFormTime }</td>
							<td><a href="findbyidorder?id=${order.orderFormId }"
								class="tablelink">修改</a> <a
								href="delorder?orderId=${order.orderFormId }" class="tablelink">
									删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>