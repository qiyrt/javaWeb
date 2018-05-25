<%-- 
    Document   : insert
    Created on : 2018-5-18, 18:39:10
    Author     : Administrator
--%>
<!--www.imooc.com-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <title>拼图前端框架HTML模版</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/pintuer.css">
        <script src="js/jquery.js"></script>
        <script src="js/pintuer.js"></script>
    </head>
    <body>
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
                <div class="xl12 xs8 xs1-move xm8 xm1-move xb8 xb1-move">
                    <form method="post">
                        <div class="form-group">
                            <div class="label">
                                <label for="sno">
                                    学号</label>
                            </div>
                            <div class="field">
                                <input type="text" class="input" id="sno" name="sno" size="50" placeholder="请输入您的学号" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="password">
                                    称呼</label>
                            </div>
                            <div class="field">
                                <div class="button-group radio">
                                    <label class="button active">
                                        <input name="gender" value="sir" checked="checked" type="radio"><span class="icon icon-male"></span> 先生
                                    </label>
                                    <label class="button">
                                        <input name="gender" value="miss" type="radio"><span class="icon icon-female"></span> 女士
                                    </label>
                                    <label class="button">
                                        <input name="gender" value="child" type="radio"><span class="icon icon-child"></span> 小朋友
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="income">
                                    年收入</label>
                            </div>
                            <div class="field">
                                <div class="input-group">
                                    <span class="addon">¥</span>
                                    <input class="input" type="text" id="money" name="money" size="50" placeholder="金额" /><span class="addon">元</span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="favor">
                                    兴趣</label>
                            </div>
                            <div class="field">
                                <div class="button-group checkbox">
                                    <label class="button">
                                        <input name="favor" value="旅游" type="checkbox"><span class="icon-plane"></span> 旅游
                                    </label>
                                    <label class="button">
                                        <input name="favor" value="美食" type="checkbox"><span class="icon-glass"></span> 美食
                                    </label>
                                    <label class="button">
                                        <input name="favor" value="时尚" type="checkbox"><span class="icon-image"></span> 摄影
                                    </label>
                                    <label class="button">
                                        <input name="favor" value="游戏" type="checkbox"><span class="icon-gamepad"></span> 游戏
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="face">
                                    头像</label>
                            </div>
                            <div class="field">
                                <a class="button input-file" href="javascript:void(0);">+ 浏览文件<input size="100" type="file" /></a>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="age">
                                    年龄阶段</label>
                            </div>
                            <div class="field">
                                <select class="input" name="age">
                                    <option>0-18岁</option>
                                    <option>18-30岁</option>
                                    <option>30-50岁</option>
                                    <option>50岁以上</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="label">
                                <label for="readme">
                                    简介</label>
                            </div>
                            <div class="field">
                                <textarea class="input" rows="5" cols="50" placeholder="介绍一下你自己"></textarea>
                            </div>
                        </div>
                        <div class="form-button">
                            <button class="button" type="submit">
                                登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--内容结束-->
        <!--尾部开始-->
        <%@include file="WEB-INF/jspf/doc_footer.jspf" %>
        <!--尾部结束-->

    </body>
</html>
