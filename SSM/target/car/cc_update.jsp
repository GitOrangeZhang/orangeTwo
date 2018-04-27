<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${cc2==null }">
	<c:redirect url="tuupdatecc"></c:redirect>
</c:if>
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
	    <span>r位置：</span>
	    <ul class="placeul">
	    <li><a href="#">企业文化</a></li>
	    <li><a href="findAll">企业文化</a></li>
	    <li><a href="#">信息修改</a></li>
	    </ul>
	   </div>
    <div class="rightinfo">
	    <div class="tools">
	    	<ul class="toolbar">
		        
       		</ul>
	    </div>
	    <div class="xline"></div>
	    <br>
    	<form action="update_cc" method="post" enctype="multipart/form-data">
    		
	    	<div id="bti" style="width: 400px;height: 300px; float: left;margin-left: 30px" >
    			<font size="50px" style="font-size: 20px;font-weight: bolder;">${cc2.corporationName }</font>
	    		<input name="corporationName" type="text" class="dfinput" value="${cc2.corporationName }"/>
	    		<input name="ccId" type="hidden" value="${cc2.ccId }"/>
    			<div class="xline"></div>
    			<br>
    			<font size="30px" style="font-size: 20px;font-weight: bold;">企业简介:</font>
    			<textarea name="corporationOverview" cols="400px;" rows="100px;" class="textinput">${cc2.corporationOverview }</textarea>
    			<br><br><br>
    			<font size="30px" style="font-size: 20px;font-weight: bold;">企业历史:</font>
    			<textarea name="brandHistory" cols="400px;" rows="" class="textinput" >${cc2.brandHistory }</textarea>
    			<font size="30px" style="font-size: 20px;font-weight: bold;">品牌承诺:</font><br><br><br>
    			<textarea name="brandPromise" cols="" rows="" class="textinput" >${cc2.brandPromise }</textarea>
	    	</div>
	    	<div id="pic" style="width: 300px;height: 230px; float: left;margin-left: 200px;" >
	    		<img alt="" src="images/brand/${cc2.corporationPic }" width="300px;" height="200px;">
	    		<input name="picFile" type="file"/>
	    		<input name="corporationPic" type="hidden" value="${cc2.corporationPic }"/>
	    	</div>
	    	
    		<div style="width: 300px;height: 400px; margin-left: 200px;">
	    		<p style="width: 700px;" align="right">
	    		<input type="submit" class="btn" value="修改"/>&nbsp;&nbsp;&nbsp;<a href="findAll_cc">
	    		<input type="button" class="btn" value="返回列表"/></a></p>
	    	</div>
    	</form>
    </div>
</body>

</html>