<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Flash</title>
  <style type="text/css" rel="stylesheet">
    body {
    font-size:12px;
    margin: 0px;
    background-color:#F0F0EE;
    }
    td.left {
    font-size:12px;
    width: 40px;
    padding: 2px;
    }
    td.right {
    font-size:12px;
    padding: 2px;
    }
    div.preview {
    border: 1px solid #AAAAAA;
    background-color: #FFFFFF;
    width: 270px;
    height: 200px;
    margin: 0px 0px 10px 0px;
    }
    div.preview div {
    margin: 5px;
    }
  </style>
</head>
<body>
  <div class="preview"><div id="previewDiv"></div></div>
  <table border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td class="left">URL:</td>
      <td class="right">
        <input type="text" id="url" name="url" value="http://" maxlength="255" style="width:210px;" />
      </td>
    </tr>
  </table>
</body>

</html>