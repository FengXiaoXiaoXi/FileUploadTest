<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.demo.JspFileUpload"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    //初始化
    JspFileUpload jfu = new JspFileUpload();
    //设定request对象
    jfu.setRequest(request);
    //设定上传的文件路径
    jfu.setUploadPath("d:\\");
    //上传处理
    int rtn = jfu.process();
    //取得form中其他input控件参数的值
    String str = jfu.getParameter("imageCount");
    System.out.println("图像总数:"+str);
    
    str=jfu.getParameter("id");
    System.out.println("客户端传递的id值:"+str);
    
    //如果对应同一个参数有多个input控件，返回数组
//    String[] usernameArr = jfu.getParameters("username");
    //取得上传的文件的名字
    String[] fileArr = jfu.getUpdFileNames();
    
    for (int i=0;i<fileArr.length;i++){
    	System.out.println(fileArr[i]);
    }
    
    //取得上传文件的个数，这个方法有点鸡肋
    int fileNumber = jfu.getUpdFileSize();
//下面的是测试输出的代码。
//       out.println("parameter:" + username);
//       out.println("parameter size:" + usernameArr.length);
//       out.println("fileArr size:" + fileArr.length);
//       if (fileArr.length > 0)
//              out.println("fileArr 0:" + fileArr[0]);
%>

</body>
</html>


