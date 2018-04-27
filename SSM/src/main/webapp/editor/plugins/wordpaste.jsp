<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WordPaste</title>
  <style type="text/css" rel="stylesheet">
    body {
    font-size:12px;
    margin: 0px;
    background-color:#F0F0EE;
    }
    #wordIframe {
    width:320px;
    height:250px;
    border:1px solid #000000;
    }
  </style>
  <script type="text/javascript">
    function setIframe() {
        var iframe = parent.KE.$('wordIframe', document);
        var iframeDoc = parent.KE.util.getIframeDoc(iframe);
        iframeDoc.designMode = "On";
        iframeDoc.open();
        iframeDoc.write('<html><head><title>WordPaste</title></head>');
        iframeDoc.write('<body style="background-color:#FFFFFF;font-size:12px;margin:2px;" />');
        if (parent.KE.browser != 'IE') iframeDoc.write('<br />');
        iframeDoc.write('</body></html>');
        iframeDoc.close();
    }
  </script>
</head>
<body onload="javascript:setIframe();">
  <div style="margin-bottom:10px;">请使用快捷键(Ctrl+V)把内容粘贴到下面的方框里。</div>
  <iframe id="wordIframe" name="wordIframe" frameBorder="0"></iframe>
</body>
</html>