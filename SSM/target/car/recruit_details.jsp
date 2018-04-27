<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected");
		$(this).addClass("selected");
	});
});
</script>
</head>
<body>
	<div class="place">
	    <span>位置：</span>
	    <ul class="placeul">
	    <li><a href="#">产品管理</a></li>
	    <li><a href="findAll">车辆列表</a></li>
	    <li><a href="#">车辆详情</a></li>
	    </ul>
	   </div>
    <div class="rightinfo">
	    <div class="tools">
	    	<ul class="toolbar">
		        
       		</ul>
	    </div>
	    <div class="xline"></div>
	    <br>
    	<div id="pic" style="width: 300px;height: 230px; float: left;margin-left: 100px;" >
    		
    	</div>
    	<div id="bti" style="width: 400px;height: 330px; float: left;margin-left: 30px" >
    		<font size="50px" style="font-size: 20px;font-weight: bolder;">职位 : ${recruit.position }</font>
    		<div class="xline"></div>
    		<br>
    		<font style="font-size: 20px;">职位需求 : </font>${recruit.requirement }
    		<br><br><br>
    		<font style="font-size: 20px;">发布状态 : </font>${recruit.recruitState }
    		<br><br><br>
    		<font style="font-size: 20px;">薪资待遇 : </font>${recruit.salary }
    		<br><br><br>
    		<font style="font-size: 20px;">邮箱 : </font>请发简历至<font color="#FF7E00">67438293@qq.com</font>
    	</div>
    	<br><br><br><br><br><br>
    	<p style="width: 700px;" align="right">
    	<a href="findAll_recruit"><input type="button" class="btn" value="返回列表"/></a></p>
    	
    </div>
</body>

</html>