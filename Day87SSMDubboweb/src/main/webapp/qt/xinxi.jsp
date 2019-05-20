<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/5/20
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

</head>
<link rel="stylesheet" href="http://www.mingyihui.net/templates/default/css/grzx.css" type="text/css">
<body>
<div style="height: 372px;width: 830px">


             <table>
                 <tbody>
                 <tr class="row3">
                     <th class="tTit">用户名：</th>
                     <td class="iCol">${curSuffer.suname}</td>
                 </tr>
                 <tr class="row3">
                     <th class="tTit">手机：</th>
                     <td class="iCol">${curSuffer.phone}</td>
                 </tr>

                 <tr class="row3">
                     <th class="tTit">年龄：</th>
                     <td class="iCol">${curSuffer.age}</td>
                 </tr>

                 <tr class="row3">
                     <th class="tTit">性别：</th>
                     <td class="iCol"><c:if test="${curSuffer.sex == 0}">男</c:if>

                         <c:if test="${curSuffer.sex ==1}">女</c:if></td>
                 </tr>
                 <tr class="row3">
                     <th class="tTit">账户余额：</th>
                     <td class="iCol"></td>
                 </tr>

                 </tbody>
             </table>





</div>

</body>
</html>
