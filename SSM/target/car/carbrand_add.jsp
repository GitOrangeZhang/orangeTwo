<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">产品管理</a></li>
    <li><a href="#">车辆品牌</a></li>
    <li><a href="#">品牌新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>品牌新增</span></div>
    
    <form action="add_carBrand" method="post" enctype="multipart/form-data">
    	<ul class="forminfo">
		    <li><label>品牌名称</label><input name="carbrandName" type="text" class="dfinput" /></li>
		    <li><label>品牌创始人</label><input name="carbrandInitiator" type="text" class="dfinput" /></li>
		    <li><label>品牌创始时间</label><input name="initiatorTime" type="text" class="dfinput" /></li>
		    <li><label>品牌logo</label><input name="picFile" type="file" class="dfinput" /></li>
		    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认新增"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    <a href="findAll_carBrand"><input type="button" class="btn" value="返回"/></a></li>
    	</ul>
    </form>
    
    
    </div>


</body>

</html>