<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${cars == null }">
	<c:redirect url="findAll"></c:redirect>
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
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected");
		$(this).addClass("selected");
	});
});
</script>
<script type="text/javascript">
	$(function(){
    	$(".toolbar1").click(function(){
			if($(".delupd").is(':hidden')){  
				$(".delupd").show();
    		}else{  
				$(".delupd").hide();
     	   } 
        });
	});
</script>

</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">产品管理</a></li>
    <li><a href="#">产品列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><a href="car_add.jsp"><span><img src="images/t01.png" /></span>添加</a></li>
        <li class="click"><a href=""><span><img src="images/t02.png" /></span>修改</a></li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        </ul>
        
        
        <ul class="toolbar1" style="cursor:pointer;">
        	<li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    <div class="xline"></div>
    <br>
    <ul class="imglist">
	    <c:forEach items="${cars }" var="car" varStatus="sta">
    		<a href="findtodetails?id=${car.carId }">
    		<li class="selected">
			    <span><img src="images/brand/${car.carPic }" /></span>
			    <h2><a href="findtodetails?id=${car.carId }">${car.carBrand.carbrandName }${car.carVersion }</a></h2>
			    <p class="delupd" style="visibility: visible;"><a href="findById_car?id=${car.carId }">编辑</a>
			    &nbsp;&nbsp;&nbsp;&nbsp;<a href="del_car?id=${car.carId }">删除</a></p>
   			</li>
    		</a>
		</c:forEach>
    </ul>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    

</body>

</html>