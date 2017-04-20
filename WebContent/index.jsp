<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>控件测试页面</title>
<script type="text/javascript">
function upload(){
  var status=document.getElementById('cap1').uploadToServer('<%=basePath%>/upload.jsp','123456','');
  alert(status);
}
</script>
</head>
<body>
<form action="" name="form1" id="form1" method="post">
  <p>
    <input type="button" value="上传结果"  id="btnUpload2" onclick="upload();"/>
  </p>
  <object classid="clsid:34681DB3-58E6-4512-86F2-9477F1A9F3D8" id="cap1" width="100%" height="500" codebase="./cabs/ImageCapOnWeb.cab#version=2,0,0,0">
    <param name="Font" value="宋体">
  </object>
</form>
</body>
</html>
