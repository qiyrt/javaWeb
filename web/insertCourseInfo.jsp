<%-- 
    Document   : insertCourseInfo
    Created on : 2018-5-24, 23:24:29
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>课程信息添加</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/pintuer.css">
        <script src="js/jquery.js"></script>
        <script src="js/pintuer.js"></script>
    </head>
    <body>
         <% request.setCharacterEncoding("utf-8"); %>
        <%@include file="WEB-INF/jspf/doc_header.jspf" %>
        <div class="container padding-big-top padding-big-bottom">
            <div class="line">
                <!--左边部分-->
                <%@include file="WEB-INF/jspf/doc_lefter.jspf" %>
                <!--<div class=""></div>-->
                <!--右边部分-->
                <div class="xl12 xs9 xs1-move xm9 xm1-move xb9 xb1-move">
                    <form method="post" name="insertForm" method="post"
            action="<%=request.getContextPath()%>/InsertCourseServlet">
                        <div class="form-group">
                            <div class="label">
                                <label for="cno">
                                    课程号</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="cno" name="cno" size="50" placeholder="请输入课程号" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="cname">
                                    课程名</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="cname" name="cname" size="50" placeholder="请输入课程名" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="cpno">
                                    前导课</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="cpno" name="cpno" size="50" placeholder="请输入前导课" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="credit">
                                    学分</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="credit" name="ccredit" size="50" placeholder="请输入课程学分" />
                            </div>
                        </div>
                        <p><input  type="submit"  value="提交"/></p>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/doc_footer.jspf" %>
    </body>
</html>
