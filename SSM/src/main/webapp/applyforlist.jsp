<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${applyfors==null }">
	<c:redirect url="findAll_applyfor"></c:redirect>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			$(".tip").fadeIn(200);
		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});
		
	});
</script>


</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">人才管理</a></li>
			<li><a href="right.jsp">应聘信息</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li class="click"><a href="cartype_add.jsp"></a><span><img src="images/t01.png" /> </span>添加</li>
				<li id="update"><span><img src="images/t02.png" /> </span>修改</li>
				<li id="del"><span><img src="images/t03.png" /></span>删除</li>
			</ul>


			<ul class="toolbar1">
				<li><span><img src="images/t05.png" /> </span>设置</li>
			</ul>

		</div>


		<table class="tablelist">
			<thead>
				<tr>
					<th><input id="ack" type="checkbox"/>
					</th>
					<th>应聘职位</th>
					<th>应聘者</th>
					<th>生日</th>
					<th>住址</th>
					<th>学历</th>
					<th>身份证号</th>
					<th>操作</th>
				</tr>
			</thead>  
			<tbody>
				<c:forEach items="${applyfors }" var="af" varStatus="sta">
					<tr class="torecruitdetails">
						<td><input name="checkbox" type="checkbox" value="${af.applyForId }" /></td>
						<td><a href="findById_af?id=${af.applyForId }">${af.recruit.position }</a></td>
						<td>${af.userRealName }</td>
						<td>${af.birthday }</td>
						<td>${af.userAdress }</td>
						<td>${af.userQualification }</td>
						<td>${af.userIDCardNumber }</td>
						<td><a href="findById_af?id=${af.applyForId }" class="tablelink">查看</a>
						&nbsp;<a href="delById_af?id=${af.applyForId }" class="tablelink">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="pagin">
			<div class="message">
				共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页
			</div>
			<ul class="paginList">
				<li class="paginItem"><a href="javascript:;"><span
						class="pagepre"></span> </a></li>
				<li class="paginItem"><a href="javascript:;">1</a></li>
				<li class="paginItem current"><a href="javascript:;">2</a></li>
				<li class="paginItem"><a href="javascript:;">3</a></li>
				<li class="paginItem"><a href="javascript:;">4</a></li>
				<li class="paginItem"><a href="javascript:;">5</a></li>
				<li class="paginItem more"><a href="javascript:;">...</a></li>
				<li class="paginItem"><a href="javascript:;">10</a></li>
				<li class="paginItem"><a href="javascript:;"><span
						class="pagenxt"></span> </a></li>
			</ul>
		</div>


		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" /> </span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>

		</div>




	</div>



</body>

</html>