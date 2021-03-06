<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${carTypes == null }">
	<c:redirect url="findAll_carType"></c:redirect>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
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
			window.location="delcartype?delid="+a+"";
		});
	});
</script>


</head>


<body>

	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">产品管理</a></li>
			<li><a href="right.jsp">车型分类</a></li>
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
					<th>类型名称</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${carTypes }" var="ct" varStatus="sta">
					<tr>
						<td><input name="checkbox" type="checkbox" value="${ct.cartypeId }" /></td>
						<td>${sta.count }</td>
						<td>${ct.cartypeName }</td>
						<td><a href="del_carType?id=${ct.cartypeId }" class="tablelink"> 删除</a></td>
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


		<div class="tipp">
			<div class="tipptop">
				<span>提示信息</span><a></a>
			</div>
			<form action="add_carType"  method="post">
			<div class="tippinfo">
				<div class="tippright" style="float: left;">
					<p>请输入新增的类型名称</p>
					<input name="cartypeName" type="text" class="dfinput" />
				</div>
			</div>
			<div class="tippbtn">
				<input type="submit" class="sure" value="新增" />&nbsp; <input
					type="button" class="cancel" value="取消" />
			</div>
			</form>
		</div>
			
		
		
		<form action="update_carType"  method="post">
		<div class="tip">
		<div class="tiptop">
			<span>提示信息</span><a></a>
		</div>
		<div class="tipinfo">
			<div class="tipright" style="float: left;">
				<p>请输入修改的类型名称</p>
				<input name="cartypeName" type="text" class="dfinput" value=""/>
			</div>
		</div>
		<div class="tipbtn">
			<input type="submit" class="sure" value="修改" />&nbsp; <input
				type="button" class="cancel" value="取消" />
		</div>
		</div>	
		</form>



	</div>



</body>

</html>