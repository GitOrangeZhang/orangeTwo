<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Link</title>
  <style type="text/css" rel="stylesheet">
    body {
    font-size:12px;
    margin: 5px;
    background-color:#F0F0EE;
    }
    td.left {
    font-size: 12px;
    width: 70px;
    padding: 2px;
    }
    td.right {
    padding: 2px;
    }
  </style>
</head>
<body>
  <table border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td class="left">URL: </td>
      <td class="right"><input type="text" id="hyperLink" name="hyperLink" value="http://" style="width:200px;" /></td>
    </tr>
    <tr>
      <td class="left">打开类型: </td>
      <td class="right">
        <select id="linkType" name="linkType">
          <option value="_blank">新窗口</option>
          <option value="_self">当前窗口</option>
        </select>
      </td>
    </tr>
  </table>
</body>
</html>