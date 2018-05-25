<%-- 
    Document   : index
    Created on : 2018-5-18, 16:41:58
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <title>首页</title>
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
                    <!--轮播开始-->
                    <div class="banner">
                        <div class="carousel">
                            <div class="item">
                                <img src="images/1.jpg" alt="图片一" title="校园风光" width="100%"/>
                            </div>
                            <div class="item">
                                <img src="images/2.jpg" alt="图片二"  title="校园风光" width="100%"/>
                            </div>
                            <div class="item">
                                <img src="images/3.jpg" alt="图片三"  title="校园风光" width="100%"/>
                            </div>
                        </div>
                    </div>
                    <!--轮播结束-->
                    <!--表格开始-->
                    <table class="table table-bordered margin-big-top">
                        <tr>
                            <th>照片</th>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>年龄</th> 
                            <th>系部</th>
                            <th>功能</th>

                        </tr>
                        <c:forEach items="${students}" var="stu">
                        <tr>
                            <td><img src="photo/nopic.png" alt="nopic.png" width="50" height="50px"/></td>
                            <td>${stu.sno}</td>
                            <td>${stu.sname}</td>
                            <td>${stu.ssex}</td>
                            <td>${stu.sage}</td>
                            <td>${stu.sdept}</td>
                            <td>
                                <a href="#" class="button border-red button-small" ><span class="icon-trash-o"></span> 删除</a> 
                                <a href="#" class="button border-blue button-small"><span class="icon-edit"></span> 修改</a>
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