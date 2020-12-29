<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Faceless
  Date: 12/29/2020
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
       Map<String,String> dic = new HashMap<>();
    %>
    <%
        dic.put("hello","Xin chào");
        dic.put("how","Thế nào");
        dic.put("book","Sách");
        dic.put("computer","Máy tính");

        String  search = request.getParameter("search");

        String result = dic.get(search);

        if(result != null){
            out.println("Word: " + search);
            out.println("Result: "+result);
        }else{
            out.println("Not found");
        }
    %>
</body>
</html>
