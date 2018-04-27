<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Remote Image</title>
    <style type="text/css" rel="stylesheet">
      body {
      font-size:12px;
      margin: 0px;
      background-color:#F0F0EE;
      overflow: hidden;
      }
      td.left1 {
      font-size:12px;
      width: 50px;
      padding: 2px;
      }
      td.right1 {
      font-size:12px;
      padding: 2px;
      }
      td.left2 {
      font-size:12px;
      width: 35px;
      padding: 2px;
      }
      td.right2 {
      font-size:12px;
      padding: 2px;
      width: 50px;
      }
    </style>
  </head>
  <body>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="left1">URL:</td>
        <td class="right1">
          <input type="text" id="url" name="url" value="http://" maxlength="255" style="width:220px;" />
        </td>
      </tr>
      <tr>
        <td class="left1">说明:</td>
        <td class="right1">
          <input type="text" id="imgTitle" name="imgTitle" value="" maxlength="100" style="width:220px;" />
        </td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="left2">宽度: </td>
        <td class="right2">
          <input type="text" name="imgWidth" id="imgWidth" value="0" maxlength="4" style="width:40px;" />
        </td>
        <td class="left2">高度: </td>
        <td class="right2">
          <input type="text" name="imgHeight" id="imgHeight" value="0" maxlength="4" style="width:40px;" />
        </td>
        <td class="left2">边框: </td>
        <td class="right2">
          <input type="text" name="imgBorder" id="imgBorder" value="0" maxlength="1" style="width:40px;" />
        </td>
      </tr>
    </table>
  </body>
</html>