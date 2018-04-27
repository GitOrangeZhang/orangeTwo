<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${carBrands == null&&carTypes == null }">
	<c:redirect url="addPrepare"></c:redirect>
</c:if>	
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
    <li><a href="#">产品管理</a></li>
    <li><a href="#">车辆添加</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>车辆新增</span></div>
	    <form action="add_car" method="post" enctype="multipart/form-data">
	    	<ul class="forminfo">
		    <li><label>车辆品牌</label>
		    	<select class="dfinput"  id="carbrandId"  name="carbrandId">
				    <option value="" >--请选择--</option>
				    <c:forEach items="${carBrands }" var="cb" varStatus="sta">
					    <option value="${cb.carbrandId }" >${cb.carbrandName }</option>
				    </c:forEach>
			    </select>
			</li>
		    <li><label>车辆类型</label>
			    <select class="dfinput"  id="cartypeId"  name="cartypeId">
				    <option value="" >--请选择--</option>
				    <c:forEach items="${carTypes }" var="ct" varStatus="sta">
					    <option value="${ct.cartypeId }" >${ct.cartypeName }</option>
				    </c:forEach>
				</select>
			</li>
		    <li><label>车辆型号</label><input name="carVersion" type="text" class="dfinput" /></li>
		    <li><label>车辆售价</label><input name="carPrice" type="text" class="dfinput" /></li>
		    <li><label>上牌时间</label><input name="carMarketTime" type="text" class="dfinput" /></li>
		    <li><label>行驶里程</label><input name="otherMessage" type="text" class="dfinput" /></li>
		    <li><label>上传照片</label><input name="pic" type="file" class="dfinput" /></li>
		    <li><label>车况简介</label><textarea name="carSynopsis" cols="" rows="" class="textinput"></textarea></li>
		    <li><label>&nbsp;</label><input type="submit" class="btn" value="确认保存"/>&nbsp;&nbsp;&nbsp;&nbsp;
		    	<a href="findAll"><input type="button" class="btn" value="返回列表"/></a></li>
	    </ul>
	    </form>
    </div>


</body>

</html>