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
	    <li><a href="#">人才管理</a></li>
	    <li><a href="findAll">应聘信息</a></li>
	    <li><a href="#">应聘详情</a></li>
	    </ul>
	   </div>
    <div class="rightinfo">
	    <div class="tools">
	    	<ul class="toolbar">
		        
       		</ul>
	    </div>
	    <div class="xline"></div>
	    <br>
    	<div id="pic" style="width: 200px;height: 400px; float: left;margin-left: 100px;" >
    		<img style="padding-top: 30px;" alt="图片正在加载..." width="100px" height="120px" src="images/photo/${applyfor.userPic }">
    	</div>
    	<div id="bti" style="width: 400px;height: 400px; float: left;" >
    		<font size="50px" style="font-size: 20px;font-weight: bolder;">职位 : ${applyfor.recruit.position }</font>
    		<div class="xline"></div>
    		<br>
    		<font style="font-size: 20px;">应聘者 : </font>${applyfor.userRealName }
    		<br><br>
    		<font style="font-size: 20px;">职位需求 : </font>${applyfor.recruit.requirement }
    		<br><br>
    		<font style="font-size: 20px;">薪资待遇 : </font>${applyfor.recruit.salary }
    		<br><br>
    		<font style="font-size: 20px;">出生年月: </font>${applyfor.birthday }
    		<br><br>
    		<font style="font-size: 20px;">地址: </font>${applyfor.userAdress }
    		<br><br>
    		<font style="font-size: 20px;">学历: </font>${applyfor.userQualification }
    		<br><br>
    		<font style="font-size: 20px;">工作经验: </font>${applyfor.workExperience }
    	</div>
    	<br><br><br><br><br><br>
    	<div style="width: 200px;height: 100px; margin-top: 50px; margin-left: 100px;">
    		<font size="30px" style="font-size: 20px;font-weight: bold;">自我评价:</font><br><br><br>
    		${applyfor.selfEvaluation }
    	</div>
    	<p style="width: 700px;" align="right">
    	<a href="findAll_applyfor"><input type="button" class="btn" value="返回列表"/></a></p>
    	
    </div>
</body>

</html>