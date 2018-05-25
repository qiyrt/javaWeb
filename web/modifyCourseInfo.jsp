<%-- 
    Document   : modifyCourseInfo
    Created on : 2018-5-25, 11:24:28
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
         <%
        request.setCharacterEncoding("utf-8");
        String cno=request.getParameter("cno");
        String cname=request.getParameter("cname");
        String cpno=request.getParameter("cpno");
        String ccredit=request.getParameter("ccredit"); 
      %>
        <%@include file="WEB-INF/jspf/doc_header.jspf" %>
        <div class="container padding-big-top padding-big-bottom">
            <div class="line">
                <!--左边部分-->
                <%@include file="WEB-INF/jspf/doc_lefter.jspf" %>
                <!--<div class=""></div>-->
                <!--右边部分-->
                <div class="xl12 xs9 xs1-move xm9 xm1-move xb9 xb1-move">
                    <form method="post" name="updateForm" method="post"
                        action="<%=request.getContextPath()%>/UpdateCourseServlet">
                        <div class="form-group">
                            <div class="label">
                                <label for="cno">
                                    课程号</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="cno" name="cno" size="50" value="<%=cno %>" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="cname">
                                    课程名</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="cname" name="cname" size="50" value="<%=cname %>"  />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="cpno">
                                    前导课</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="cpno" name="cpno" size="50" value="<%=cpno %>" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="credit">
                                    学分</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="ccredit" name="ccredit" size="50" value="<%=ccredit %>" />
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