<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${admins == null }">
	<c:redirect url="findAll_admin"></c:redirect>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/radio.js"></script>
<link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
<script type="text/javascript" src="easyUI/jquery.easyui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//弹框修改
		$(".click").click(function() {
			$(".tipp").fadeIn(200);
		});
		
		$(".tiptop a").click(function() {
			$(".tipp").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tipp").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tipp").fadeOut(100);
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
		//弹框修改
		$("#update").click(function(){
		var arr = document.getElementsByName("checkbox");
		var a = "";
		for ( var i = 0; i < arr.length; i++) {
			if($("input[type=checkbox][name=checkbox]:checked").length>1){
				$.messager.alert("警告","选那么干嘛，我一次不会修改那么多！","warning");
				break;
			}else if($("input[type=checkbox][name=checkbox]:checked").length==0){
				$.messager.alert("警告","选都没选，你修改个毛啊！","warning");
				break;
			}else{
				if(arr[i].checked){
					a = arr[i].value;
					//window.location="";
					$("#update").click(function() {
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
				}
			}
		}
		});
	
	
		$("#del").click(function(){
			var arr = document.getElementsByName("checkbox");
			var a = "";
			for ( var i = 0; i < arr.length; i++) {
				if(arr[i].checked){
					a += arr[i].value+",";
				}
			}
			window.location="deladmin?delid="+a+"";
		});
	});
</script>


</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">系统管理</a></li>
			<li><a href="right.jsp">管理员列表</a></li>
		</ul>
	</div>

	<div class="rightinfo">

		<div class="tools">

			<ul class="toolbar">
				<li class="click"><a href="cartype_add.jsp"></a><span><img src="images/t01.png" /> </span>添加</li>
				<li id="update"><span><img src="images/t02.png" /> </span>修改</li>
				<li id="del"><span><img src="images/t03.png" /></span>删除</li>
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
					<th>管理员姓名</th>
					<th>管理员性别</th>
					<th>管理员电话</th>
					<th>管理员权限</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${admins }" var="admin" varStatus="sta">
					<tr>
						<td><input name="checkbox" type="checkbox" value="${admin.adminId }" /></td>
						<td>${sta.count }</td>
						<td>${admin.adminName }</td>
						<td>${admin.adminGender }</td>
						<td>${admin.adminTel }</td>
						<c:if test="${admin.adminGrade==1 }">
							<td>超级管理员</td>
						</c:if>
						<c:if test="${admin.adminGrade==2 }">
							<td>管理员</td>
						</c:if>
						<c:if test="${admin.adminGrade==2 }">
							<td><a href="del_admin?id=${admin.adminId }" class="tablelink"> 删除</a></td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="pagin">
			<div class="message">
				共<i class="blue">${ctSize }</i>条记录，当前显示第&nbsp;<i class="blue">1&nbsp;</i>页
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


		<div class="tipp" style="height: 460px;">
			<div class="tipptop">
				<span>新增管理员</span><a></a>
			</div>
			<form action="add_admin"  method="post">
				<div class="tippinfo">
					<br><p style="font-weight: bolder;font-size: 15px;">请输入新增的管理员姓名</p>
					<input name="adminName" type="text" class="dfinput" /><br>
					<br><p style="font-weight: bolder;font-size: 15px;">请输入新增的管理员密码</p>
					<input name="adminPassword" type="password" class="dfinput" /><br>
					<br><p style="font-weight: bolder;font-size: 15px;">请输入新增的管理员性别</p>
					<br><input name="adminGender" type="radio" checked="checked" value="男"/>&nbsp;男&nbsp;
					<input name="adminGender" type="radio" value="女"/>&nbsp;女<br>
					<br><p style="font-weight: bolder;font-size: 15px;">请输入新增的管理员电话</p>
					<input name="adminTel" type="text" class="dfinput" />
					<input name="adminGrade" type="hidden" value="2"/>
					<br><br><br>
					<p align="center">
					<input type="submit" class="sure" value="新增" />&nbsp;
					<input type="button" class="cancel" value="取消" /></p>
				</div>
			</form>
		</div>
			
		
		
		<form action="update_carType"  method="post">
			<div class="tip" style="height: 460px;">
				<div class="tiptop">
					<span>修改管理员</span><a></a>
				</div>
				<div class="tipinfo">
					<br><p style="font-weight: bolder;font-size: 15px;">请输入修改的管理员姓名</p>
					<input name="adminName" type="text" class="dfinput" value=""/><br>
					<br><p style="font-weight: bolder;font-size: 15px;">请输入修改的管理员密码</p>
					<input name="adminPassword" type="password" class="dfinput" value=""/><br>
					<br><p style="font-weight: bolder;font-size: 15px;">请输入修改的管理员性别</p>
					<br><input name="adminGender" type="radio" checked="checked" value="男"/>&nbsp;男&nbsp;
					<input name="adminGender" type="radio" value="女"/>&nbsp;女<br>
					<br><p style="font-weight: bolder;font-size: 15px;">请输入修改的管理员电话</p>
					<input name="adminTel" type="text" class="dfinput" value=""/>
					<input name="adminGrade" type="hidden" value="2"/>
					<br><br><br>
					<p align="center">
					<input type="submit" class="sure" value="修改" />&nbsp;
					<input type="button" class="cancel" value="取消" /></p>
				</div>
			</div>	
		</form>



	</div>



</body>

</html>