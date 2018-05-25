<%-- 
    Document   : CourseInfo
    Created on : 2018-5-24, 15:36:06
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>课程信息</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/pintuer.css">
        <script src="js/jquery.js"></script>
        <script src="js/pintuer.js"></script>
    </head>
    
    <body>
        <% request.setCharacterEncoding("utf-8"); %>
        <!--首部开始-->
        <!--快捷键alt+/-->
        <!--首部结束-->
        <!--内容开始-->
        <%@include file="WEB-INF/jspf/doc_header.jspf" %>
        <div class="container padding-big-top padding-big-bottom">
            <div class="line">
                <!--左边部分-->
                <%@include file="WEB-INF/jspf/doc_lefter.jspf" %>
                <!--<div class=""></div>-->
                <!--右边部分-->
                <div class="xl12 xs9 xs1-move xm9 xm1-move xb9 xb1-move">
                    <!--表格开始-->
                    <table class="table table-bordered margin-big-top">
                        <tr>
                            <th>课程号</th>
                            <th>课程名</th>
                            <th>前导课</th>
                            <th>学分</th>
                            <th>操作</th>
                        </tr>
                        <c:forEach items="${courses}" var="cou">
                        <tr>
                            <td>${cou.cno}</td>
                            <td>${cou.cname}</td>
                            <td>${cou.cpno}</td>
                            <td>${cou.credit}</td>
                            <td>
                            <a href="modifyCourseInfo.jsp?cno=${cou.cno}&cname=${cou.cname}&cpno=${cou.cpno}&ccredit=${cou.credit}"  class="button border-red button-small" ><span class="icon-trash-o"></span> 修改</a>
                            <a href="<%=request.getContextPath()%>/DeleteCourseServlet?cno=${cou.cno}"  class="button border-blue button-small"><span class="icon-edit"></span>删除</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </table>
                    <!--表格结束-->
                </div>
            </div>
        </div>
        <!--内容结束-->
        <!--尾部开始-->
        <%@include file="WEB-INF/jspf/doc_footer.jspf" %>
        <!--尾部结束-->

    </body>
</html>
