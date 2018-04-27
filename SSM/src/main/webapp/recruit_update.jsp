<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
<script type="text/javascript" src="easyUI/jquery.js"></script>
<script type="text/javascript" src="easyUI/jquery.easyui.min.js"></script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">人才管理</a></li>
    <li><a href="#">招聘信息修改</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>招聘信息修改</span></div>
	    <form action="update_rec" method="post">
	    	<ul class="forminfo">
		    <li><label>招聘职位</label><input name="position" type="text" class="dfinput"  value="${recruit.position }"/></li>
		    <li><label>职位需求</label><input name="requirement" type="text" class="dfinput"  value="${recruit.requirement }"/></li>
		    <li><label>薪资待遇</label><input name="salary" type="text" class="dfinput"  value="${recruit.salary }"/></li>
		    <li><label>是否发布</label>
		    <span style="height: 34px;"><input height="34px;" style="margin-top: 12px;" name="recruitState" type="radio" checked="checked" value="已发布"/>&nbsp;已发布&nbsp;
		    <input name="recruitState" type="radio" value="不发布"/>不发布</span> </li>
		    <li><label>&nbsp;</label><input name="recruitId" type="hidden" class="dfinput"  value="${recruit.recruitId }"/>
		    	<input type="submit" class="btn" value="确认修改"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    	<a href="findAll_recruit"><input type="button" class="btn" value="返回列表"/></a></li>
	    </ul>
	    </form>
    </div>


</body>

</html>