<%-- 
    Document   : SelectCourseInfo
    Created on : 2018-5-24, 15:47:16
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>选课信息</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/pintuer.css">
        <script src="js/jquery.js"></script>
        <script src="js/pintuer.js"></script>
    </head>
    <body>
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
                            <th>学号</th>
                            <th>成绩</th>
                        </tr>
                        <tr>
                            <td>001</td>
                            <td>201500805</td>
                            <td>98</td>
                        </tr>
                        <tr>
                            <td>002</td>
                            <td>201700902</td>
                            <td>89</td>
                        </tr>
                    </table>
                    <!--表格结束-->
                </div>
            </div>
        </div>
       <!--尾部开始-->
        <%@include file="WEB-INF/jspf/doc_footer.jspf" %>
        <!--尾部结束-->
    </body>
</html>
