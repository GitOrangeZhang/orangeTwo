<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${carBrands == null }">
	<c:redirect url="findAll_carBrand"></c:redirect>
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
<script type="text/javascript">
	$(function(){
		//全选
   		$("#ack").click(function(){
   			//匹配所有的子选项
   			$("input:checkbox[name=checkbox]").attr("checked",this.checked);
   		});
   		//反选
   		$("input:checkbox[name=checkbox]").bind("click",function(){
   			//所有的子选项
   			var array1=$("input:checkbox[name=checkbox]");
   			//取得选中的子选项
   			var array2=$("input:checkbox[name=checkbox]:checked");
   			
   			//$(this).is(":checked")//如果当前复选框被选中
   			if(this.checked){
   				//如果子选项选中，那么需要判断是否所有的子选项都选中了
   				if(array1.length==array2.length){
   					$("#ack").prop("checked",true);
   				}
   			}else{
   				//如果子选项取消选中，那么全选也要取消
   				$("#ack").prop("checked",false);
   			}
   		});
   	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
	//选中删除
	$("#del").click(function(){
		var arr = document.getElementsByName("checkbox");
		var a = "";
		for ( var i = 0; i < arr.length; i++) {
			if(arr[i].checked){
				a += arr[i].value+",";
			}
		}
		window.location="delcarbrand?delid="+a+"";
	});
	});
</script>
</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">产品管理</a></li>
			<li><a href="right.jsp">车辆品牌</a></li>
		</ul>
	</div>

	<div class="rightinfo">
		<div class="tools">
			<ul class="toolbar">
				<li class="_click"><a href="carbrand_add.jsp"><span><img src="images/t01.png" /> </span>添加</a></li>
				<li class="click"><span><img src="images/t02.png" /> </span>修改</li>
				<li id="del"><span><img src="images/t03.png" /> </span>删除</li>
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
					<th>编号<i class="sort"><img src="images/px.gif" />
					</i>
					</th>
					<th>品牌</th>
					<th>品牌logo</th>
					<th>创始人</th>
					<th>创始时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carBrands }" var="car" varStatus="sta">
					<tr>
						<td><input name="checkbox"  type="checkbox" value="${car.carbrandId }" />
						</td>
						<td>${sta.count }</td>
						<td>${car.carbrandName }</td>
						<td><img alt="图片丢失..." width="70" height="70" src="images/brand/${car.carbrandPic }">
						</td>
						<td>${car.carbrandInitiator }</td>
						<td>${car.initiatorTime }</td>
						<td><a href="del_carBrand?id=${car.carbrandId }"
							class="tablelink"> 删除</a>
						</td>
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